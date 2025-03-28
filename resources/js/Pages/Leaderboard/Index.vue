<script setup>
import { ref, watch } from 'vue';
import { Head, Link, router } from '@inertiajs/vue3';
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';

const props = defineProps({
    leaderboard: Array,
    filters: Object,
});

const period = ref(props.filters.period || 'all');
const userId = ref(props.filters.userId || '');
const searchInput = ref(props.filters.userId || '');
const isLoading = ref(false);
const message = ref('');
const showModal = ref(false);
const selectedUserId = ref(null);
const selectedUserName = ref('');

// Filter leaderboard 
const filterByPeriod = (newPeriod) => {
    period.value = newPeriod;
    router.get(route('leaderboard'), { 
        period: newPeriod, 
        user_id: userId.value 
    }, { 
        preserveState: true,
        only: ['leaderboard', 'filters']
    });
};

// Search for user by ID
const searchUser = () => {
    userId.value = searchInput.value;
    router.get(route('leaderboard'), { 
        period: period.value, 
        user_id: searchInput.value 
    }, { 
        preserveState: true,
        only: ['leaderboard', 'filters']
    });
};

// Recalculate leaderboard
const recalculateLeaderboard = async () => {
    isLoading.value = true;
    message.value = '';
    
    try {
        const response = await axios.post(route('leaderboard.recalculate'), {
            period: period.value
        });
        
        message.value = response.data.message;
        
        router.reload({ only: ['leaderboard'] });
    } catch (error) {
        message.value = 'Error recalculating leaderboard';
        console.error(error);
    } finally {
        isLoading.value = false;
    }
};

// Add random activity
const addRandomActivity = async () => {
    isLoading.value = true;
    message.value = '';
    
    try {
        const response = await axios.post(route('activity.create'));
        message.value = response.data.message;
        
        await recalculateLeaderboard();
    } catch (error) {
        message.value = 'Error adding activity';
        console.error(error);
    } finally {
        isLoading.value = false;
    }
};

const addUserActivity = async (user) => {
    selectedUserId.value = user.id;
    selectedUserName.value = user.name;
    showModal.value = true;
};


const confirmAddActivity = async () => {
    if (!selectedUserId.value) return;
    
    isLoading.value = true;
    message.value = '';
    
    try {
        const response = await axios.post(route('activity.create'), {
            user_id: selectedUserId.value,
        });
        
        message.value = response.data.message || `Activity added for user ${selectedUserName.value}`;
        showModal.value = false;
        
        await recalculateLeaderboard();
    } catch (error) {
        message.value = 'Error adding activity';
        console.error(error);
    } finally {
        isLoading.value = false;
    }
};

const closeModal = () => {
    showModal.value = false;
    selectedUserId.value = null;
    selectedUserName.value = '';
};


const clearSearch = () => {
    searchInput.value = '';
    userId.value = '';
    router.get(route('leaderboard'), { 
        period: period.value
    }, { 
        preserveState: true,
        only: ['leaderboard', 'filters']
    });
};
</script>

<template>
    <Head title="Leaderboard" />

    <AuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">Activity Leaderboard</h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 text-gray-900">
                        <div class="mb-4">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <div class="btn-group" role="group">
                                        <button @click="filterByPeriod('all')" 
                                            :class="['btn', period === 'all' ? 'btn-primary' : 'btn-outline-primary']">
                                            All Time
                                        </button>
                                        <button @click="filterByPeriod('year')" 
                                            :class="['btn', period === 'year' ? 'btn-primary' : 'btn-outline-primary']">
                                            This Year
                                        </button>
                                        <button @click="filterByPeriod('month')" 
                                            :class="['btn', period === 'month' ? 'btn-primary' : 'btn-outline-primary']">
                                            This Month
                                        </button>
                                        <button @click="filterByPeriod('day')" 
                                            :class="['btn', period === 'day' ? 'btn-primary' : 'btn-outline-primary']">
                                            Today
                                        </button>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <div class="d-flex flex-wrap gap-2">
                                        <div class="input-group">
                                            <input 
                                                type="number" 
                                                v-model="searchInput" 
                                                class="form-control" 
                                                placeholder="Search by User ID"
                                                @keyup.enter="searchUser"
                                            />
                                            <button @click="searchUser" class="btn btn-outline-secondary">
                                                Search
                                            </button>
                                            <button v-if="userId" @click="clearSearch" class="btn btn-outline-danger">
                                                Clear
                                            </button>
                                        </div>
                                        
                                        <button @click="recalculateLeaderboard" class="btn btn-success" :disabled="isLoading">
                                            {{ isLoading ? 'Loading...' : 'Recalculate' }}
                                        </button>
                                        
                                        <button @click="addRandomActivity" class="btn btn-info" :disabled="isLoading">
                                            Add Random
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div v-if="message" class="alert alert-info mt-3">{{ message }}</div>
                        
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Rank</th>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th class="text-end">Total Points</th>
                                        <th class="text-center">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-if="!leaderboard || leaderboard.length === 0">
                                        <td colspan="5" class="text-center py-4">No data available for this period</td>
                                    </tr>
                                    <tr v-for="user in leaderboard" :key="user.id" :class="{ 'table-warning': userId && user.id === parseInt(userId) }">
                                        <td>{{ user.rank }}</td>
                                        <td>{{ user.id }}</td>
                                        <td>{{ user.name }}</td>
                                        <td class="text-end">{{ user.total_points }}</td>
                                        <td class="text-center">
                                            <button @click="addUserActivity(user)" class="btn btn-sm btn-primary" :disabled="isLoading">
                                                Add Activity
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div v-if="showModal" class="modal fade show d-block" style="background-color: rgba(0,0,0,0.5);">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Activity</h5>
                        <button type="button" class="btn-close" @click="closeModal"></button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure you want to add an activity for <strong>{{ selectedUserName }}</strong>?</p>
                        <p class="text-muted">This will add 20 points to their total score.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" @click="closeModal">Cancel</button>
                        <button type="button" class="btn btn-primary" @click="confirmAddActivity" :disabled="isLoading">
                            {{ isLoading ? 'Adding...' : 'Add Activity' }}
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </AuthenticatedLayout>
</template>

<style scoped>
.btn-group {
    margin-bottom: 1rem;
}

@media (min-width: 768px) {
    .btn-group {
        margin-bottom: 0;
    }
}

.btn-info {
    color: white;
}
</style>
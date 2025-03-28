<?php

namespace Database\Seeders;

use App\Models\Activity;
use App\Models\User;
use Illuminate\Database\Seeder;

class ActivitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $users = User::all();

        // Create activities for each user
        foreach ($users as $user) {

            $count = rand(5, 20);
            Activity::factory()
                ->count($count)
                ->for($user)
                ->create();
        }
    }
}

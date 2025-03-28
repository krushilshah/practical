<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
class ActivityFactory extends Factory
{
    public function definition(): array
    {
        $activityTypes = ['walking', 'running', 'cycling', 'swimming'];
        
        return [
            'user_id' => User::factory(),
            'points' => 20, 
            'activity_type' => $this->faker->randomElement($activityTypes),
            'created_at' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'updated_at' => now(),
        ];
    }
}
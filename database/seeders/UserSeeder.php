<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::updateOrCreate(
            ['email' => 'user@gmail.com'],
            [
                'name' => 'Admin User',
                'password' => Hash::make('12345678'),                
            ]
        );
     
        User::factory(20)->create();
    }
}
# Activity Leaderboard Application

This Laravel 11 application implements an activity leaderboard system using Vue.js and Inertia.js with Bootstrap styling. The leaderboard tracks user activities like walking and running, awarding 20 points for each activity.

## Features

- **User Authentication**: Laravel Breeze with Vue.js and Inertia.js
- **Activity Tracking**: Records user activities with points (20 points per activity)
- **Leaderboard**: Displays users ranked by total points
- **Filtering**: Filter leaderboard by day, month, year, or all time
- **Search**: Search for specific users by ID
- **Real-time Updates**: Recalculate leaderboard on demand and add random activities for testing

## Requirements

- PHP 8.2+
- Composer
- Node.js and NPM
- MySQL

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd activity-leaderboard
```

2. Install PHP dependencies:
```bash
composer install
```

3. Install and compile frontend assets:
```bash
npm install
npm run dev
```

4. Create a `.env` file from the example:
```bash
cp .env.example .env
```

5. Generate application key:
```bash
php artisan key:generate
```

6. Configure your database in the `.env` file:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=activity_leaderboard
DB_USERNAME=root
DB_PASSWORD=
```

7. Run migrations and seed the database:
```bash
php artisan migrate --seed
```

8. Start the development server:
```bash
php artisan serve
```

## Database Structure

The application uses three main tables:

1. **users**: Stores user information (from Laravel authentication)
2. **activities**: Records individual user activities with points
3. **user_points**: Stores calculated total points and ranks for each user

## Ranking Logic

- Users are ranked by their total points in descending order
- Users with the same number of points share the same rank
- Rank is stored in the database rather than calculated on the fly
- Points can be filtered by different time periods (day, month, year, all time)

## Demo Credentials

After seeding the database, you can log in with:

- Email: admin@example.com
- Password: password
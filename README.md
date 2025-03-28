# Activity Leaderboard Application

This Laravel 11 application implements an activity leaderboard system using Vue.js and Inertia.js with Bootstrap styling. The leaderboard tracks user activities like walking and running, awarding 20 points for each activity.

## Features

- **User Authentication**: Laravel Breeze with Vue.js and Inertia.js
- **Activity Tracking**: Records user activities with points (20 points per activity)
- **Leaderboard**: Displays users ranked by total points
- **Filtering**: Filter leaderboard by day, month, year, or all time
- **Search**: Search for specific users by ID
- **Real-time Updates**: Recalculate leaderboard on demand
- **Add Activities**: Add activities randomly or for specific users

## Requirements

- PHP 8.2+
- Composer
- Node.js and NPM
- MySQL/MariaDB

## Installation

1. Clone the repository:
```bash
git clone https://github.com/krushilshah/practical.git
cd practical
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
DB_DATABASE=user_activity
DB_USERNAME=root
DB_PASSWORD=
```

7. Run migrations and seed the database:
```bash
php artisan migrate --seed
```
   - Alternatively, you can import the SQL file provided in the database folder.

8. Start the development server:
```bash
php artisan serve
```

9. Access the application at: http://localhost

## Important Note

You need to run both the Laravel server and the Vite development server simultaneously:

```bash
# Terminal 1: Start Laravel server
php artisan serve

# Terminal 2: Start Vite server for frontend assets
npm run dev
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

- **Email**: user@gmail.com
- **Password**: 12345678

## Usage

1. Log in using the provided credentials
2. View the leaderboard with user rankings based on activity points
3. Filter by different time periods using the buttons
4. Search for a specific user by ID
5. Add activities:
   - Click "Add Random" to add an activity for a random user
   - Click "Add Activity" next to a specific user to add activity for them
6. Click "Recalculate" to update the leaderboard after adding activities

## Troubleshooting

- If you encounter any issues with styling or JS not loading, make sure both `php artisan serve` and `npm run dev` are running in separate terminals.
- For database connection issues, verify your MySQL server is running and the credentials in `.env` are correct.
- If seeds aren't working, you can import the SQL file from the database folder directly.


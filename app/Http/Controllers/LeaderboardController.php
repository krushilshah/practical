<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use App\Models\User;
use App\Services\LeaderboardService;
use Illuminate\Http\Request;
use Inertia\Inertia;

class LeaderboardController extends Controller
{
    protected $leaderboardService;

    public function __construct(LeaderboardService $leaderboardService)
    {
        $this->leaderboardService = $leaderboardService;
    }

    public function index(Request $request)
    {
        $period = $request->input('period', 'all');
        $userId = $request->input('user_id');

        $leaderboard = $this->leaderboardService->getLeaderboard($period, $userId);

        return Inertia::render('Leaderboard/Index', [
            'leaderboard' => $leaderboard->map(function ($item) {
                return [
                    'id' => $item->user->id,
                    'name' => $item->user->name,
                    'rank' => $item->rank,
                    'total_points' => $item->total_points,
                ];
            }),
            'filters' => [
                'period' => $period,
                'userId' => $userId,
            ],
        ]);
    }

    public function recalculate(Request $request)
    {
        $period = $request->input('period', 'all');
        
        $this->leaderboardService->calculateRankings($period);
        
        return response()->json([
            'message' => 'Leaderboard recalculated successfully'
        ]);
    }

    public function createActivity(Request $request)
    {
        try {
            $userId = $request->input('user_id');
            $userName = null;
            
            if ($userId) {                
                $user = User::find($userId);
                
                if (!$user) {
                    return response()->json([
                        'message' => 'User not found with ID: ' . $userId
                    ], 404);
                }
                
                $userName = $user->name;
            } else {
                $user = User::inRandomOrder()->first();
                if (!$user) {
                    return response()->json([
                        'message' => 'No users available in the system'
                    ], 404);
                }
                
                $userId = $user->id;
                $userName = $user->name;
            }
            
            Activity::create([
                'user_id' => $userId,
                'points' => 20,
                'activity_type' => $request->input('activity_type', 'walking')
            ]);
            
            return response()->json([
                'message' => "Activity added successfully for {$userName} (+20 points)",
                'user_id' => $userId,
                'user_name' => $userName
            ]);
            
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Error adding activity: ' . $e->getMessage()
            ], 500);
        }
    }
}
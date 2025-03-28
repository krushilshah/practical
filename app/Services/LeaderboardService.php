<?php

namespace App\Services;

use App\Models\{User,Activity,UserPoint};
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class LeaderboardService
{

    public function calculateRankings($period = 'all')
    {        
        UserPoint::truncate();
            
        $startDate = $this->getStartDate($period);
            
        $userPoints = Activity::select('user_id', DB::raw('SUM(points) as total_points'))
            ->when($startDate, function ($query, $startDate) {
                return $query->where('created_at', '>=', $startDate);
            })
            ->groupBy('user_id')
            ->orderBy('total_points', 'desc')
            ->get();
        
        
        if ($userPoints->isEmpty()) {
            return;
        }
        
        $currentRank = 1;
        $previousPoints = null;
                
        foreach ($userPoints as $index => $pointData) {
            if ($previousPoints !== null && $previousPoints !== $pointData->total_points) {
                $currentRank = $index + 1;
            }
            
            UserPoint::create([
                'user_id' => $pointData->user_id,
                'total_points' => $pointData->total_points,
                'rank' => $currentRank,
            ]);
            
            $previousPoints = $pointData->total_points;
        }
    }
    
    private function getStartDate($period)
    {
        switch ($period) {
            case 'day':
                return Carbon::today();
            case 'month':
                return Carbon::now()->startOfMonth();
            case 'year':
                return Carbon::now()->startOfYear();
            default:
                return null;
        }
    }
    
    public function getLeaderboard($period = 'all', $userId = null)
    {
        $this->calculateRankings($period);
        
        $query = UserPoint::with('user')
                ->orderBy('rank')
                ->orderBy('total_points', 'desc');
                
        if ($userId) {
            $userPoint = UserPoint::where('user_id', $userId)->first();
            
            if ($userPoint) {
                $filteredUser = clone $userPoint;
                $filteredUser->load('user'); 
                $otherUsers = $query->where('user_id', '!=', $userId)->get();
                $results = collect([$filteredUser])->merge($otherUsers);
                return $results;
            }
        }
        
        return $query->get();
    }
}
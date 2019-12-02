//
//  Challenge.swift
//  ChallengeCalculator Dec. 2
//
//  Created by World Domination a Brand on 12/2/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import Foundation

struct Challenge {
    
    // function was made for illustration purposes - not a part of the app logic
    func addTwoNumbers(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    // user inputs 11,000 feet elevation
    // user inputs 5 weeks
    func calculateWeeklyTraining( for metric: Double,
                                  and weeks: Int) -> Int {
        // once you check that the function works and and the test applies then you should always apply a test for edge cases. to take if the worst possible senario
        
        // need to guard againtst user entering 0
        
        // refactor to guard against 0 weeks
        guard weeks > 0 else { return -1 }
        // we used -1 because there cannot be a negative amount of weeks
        
        
        // red (fails test), green (passes test), refactor (rewrite, optimize)
        
        return Int(metric) / weeks // average metris (elevation, distance) per week
        
    }
    
    // production code.. gets shipped with the app.. - part of the application 
    func averageTrainingPerWeek(challengeMetric: Int,
                                numberOfWorkoutDays: Int) -> Int {
        
        // guard against zero, letters
        // refactor to guardfor valid days of the week 1...7
        
        // created a range.. and numberOfWorkoutDays needs to contain 1...7
        guard (1...7).contains(numberOfWorkoutDays) else { return -1 }
        
        // proper refactoring is backed with unit testing..
        return challengeMetric / numberOfWorkoutDays
    }
    
    
}

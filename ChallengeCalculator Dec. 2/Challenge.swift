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
        
        return Int(metric) / weeks // average metris (elevation, distance) per week 
    }
    
    
}

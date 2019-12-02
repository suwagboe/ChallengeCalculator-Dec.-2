//
//  ChallengeCalculator_Dec__2Tests.swift
//  ChallengeCalculator Dec. 2Tests
//
//  Created by World Domination a Brand on 12/2/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import XCTest

// is a compiler directive.. enables this test suite to have access to the challengeCalulator modules
    // meaning it has access to everything inside of challengeCalculator
@testable import ChallengeCalculator_Dec__2

class ChallengeCalculator_Dec__2Tests: XCTestCase {
    // XCTestCase is the parent class
        // so ChallengeCalculator_Dec__2Tests inherits from XCTestCase

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("setUp - called before EACH test is run")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        print("tearDown - called after each test is completed.")
    }

    // test prefix is requried in the function to make it an actual test fuction
    // test functions do not take in any parameters
    // test function doesnt return any vaules
    
    // should be done for each function
    // keep the test and run each time
    //Always different test function.. never do multiple in one
    func testAddTwoNumbers() {
    
        // arrange the test in this format ALWAYS.. and applies to all test UIs
        
// arrange(given) - setup constants, variables and the (system under test)
        // sut ~ means literally system under test
        let sut = Challenge()
        let num1 = 10
        let num2 = 5
        let expectedResult = 15
        
        // act(when)- perform workload
        let result = sut.addTwoNumbers(num1: num1, num2: num2)
        
        
        //assert(then) - test for givrn condition
            // use command u to run test
        
    XCTAssertEqual(expectedResult, result, "\(result) should be \(expectedResult)")
    }
    
    func testCalculateWeeklyTraining() {
        // 000_000 not 000,000 it is not valid code
        // arrange
        let sut = Challenge() // creating an instance of challenge
        let sutExpectAverage = 2320 // feet elevation per week
        let metric = 11_602 // overal elevation feet challenge
        let numberOfWeeksForChallenge = 5 // weeks
        
        
        //act
        let weeklyTraining = sut.calculateWeeklyTraining(for: Double(metric), and: numberOfWeeksForChallenge)
        
        //assert
        // want to test the Expectedaverage is equal to the weeklyTraining
        XCTAssertEqual(sutExpectAverage, weeklyTraining, "weeklyTraining: \(weeklyTraining) should be equal to sutExpectAverage:\(sutExpectAverage)")
    }
    
    // write a test to validate that if user entered 0 the system should return the guard -1
    func testEdgeCase0() {
        // arrange
        let sut = Challenge()
        let enteredZero = -1
       // let sutExpectedAverage = 0
        let metric = 11_602
        let numberOfWeeksForChallenge = 0
        
        //act
        let expectedOutput = sut.calculateWeeklyTraining(for: Double(metric), and: numberOfWeeksForChallenge)
        
        //assert
        XCTAssertEqual(enteredZero, expectedOutput, "the user inputed \(numberOfWeeksForChallenge) which will cause the answer to be \(enteredZero)")
        
        // TDD - TEST DRIVEN DEVELOPMENT definition
        /*
         - you start writing a unit test until it fails or compiler error
         - then go to production code e.X ~ challenge.swift file,
         - fix the failer
         - until the test passes, contiune writing unit test until failure again and contiune the cycle.
         */
        
    }
    
    

}

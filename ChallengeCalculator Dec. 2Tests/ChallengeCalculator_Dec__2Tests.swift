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
    func testAddTwoNumbers() {
    
        // arrange the test in this format ALWAYS.. and applies to all test UIs
        
// arrange(given) - setup constants, variables and the (system under test)
        // sut ~ means literally system on the test
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

}

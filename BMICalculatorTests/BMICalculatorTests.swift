//
//  BMICalculatorTests.swift
//  BMICalculatorTests
//
//  Created by David Cormell on 23/02/2022.
//

import XCTest
@testable import BMICalculator

class BMICalculatorTests: XCTestCase {

    func testCalculateBmiWithHeightAndWeightReturnsCorrectBmi() throws {
        //arrange
        let calculator = BMICalculations()
        let weightInKgs = 16.9
        let heightInCms = 105.4
        let expected = 15.2
        
        let testCases = [(weight: 16.9, height: 105.4, expected: 15.2),(weight: 16.6, height: 99.1, expected: 16.9),(weight: 18.3, height: 103.5, expected: 17.1)]
        
        //act
        let actual = calculator.calculateBmi(weight: weightInKgs, height: heightInCms)
        
        //assert
        XCTAssertEqual(actual, expected)
        
    }
    

}

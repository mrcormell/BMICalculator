//
//  BMICalculations.swift
//  BMICalculator
//
//  Created by Cormell, David - DPC on 24/02/2022.
//

import Foundation

class BMICalculations {
    func calculateBmi(weight: Double, height: Double) -> Double {
        let bmi = (weight / height / height) * 10000
        return bmi.rounded(toPlaces: 1)
    }
    
    func lookUpBmiClassification(bmi: Double) -> String {
        if bmi < 18.5 {
            return "Underweight"
        } else if bmi <= 24.9 {
            return "Healthy"
        } else if bmi <= 29.9 {
            return "Overweight"
        } else {
            return "Obese"
        }
    }
}

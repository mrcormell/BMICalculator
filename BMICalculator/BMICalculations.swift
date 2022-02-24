//
//  BMICalculations.swift
//  BMICalculator
//
//  Created by Cormell, David - DPC on 24/02/2022.
//

import Foundation

class BMICalculations {
    func calculateBmi(weight: Double, height: Double, unit: Unit = Unit.metric) -> Double {
        var multiplier = 10000
        if unit == Unit.imperial {
            multiplier = 703
        }
        let bmi = (weight / height / height) * Double(multiplier)
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

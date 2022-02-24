//
//  ViewModel.swift
//  BMICalculator
//
//  Created by Cormell, David - DPC on 24/02/2022.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var height: Double?
    @Published var weight: Double?
    @Published var bmiMessage: String = ""
    @Published var unit = Unit.metric
    
    let bmiCalculations = BMICalculations()
    let units = Unit.allCases
    
    var heightLabel: String {
        unit == Unit.metric ? "Height (cm)" : "Height (in)"
    }
    var weightLabel: String {
        unit == Unit.metric ? "Weight (kg)" : "Weight (lbs)"
    }
    
    func updateBmi() {
        if let height = height {
            if let weight = weight {
                let bmi = bmiCalculations.calculateBmi(weight: weight, height: height, unit: unit)
                let classification = bmiCalculations.lookUpBmiClassification(bmi: bmi)
                bmiMessage = "Your BMI is: \(bmi)\nYou are \(classification)"
            } else {
                bmiMessage = "Please enter a valid weight"
            }
        } else {
            bmiMessage = "Pleas enter a valid height"
        }

    }
}

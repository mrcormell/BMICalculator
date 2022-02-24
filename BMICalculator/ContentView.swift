//
//  ContentView.swift
//  BMICalculator
//
//  Created by David Cormell on 23/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var height: Double?
    @State private var weight: Double?
    @State private var bmiMessage: String = ""
    private let bmiCalculations = BMICalculations()
    
    var body: some View {
        VStack {
            Image("PublicHealth")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Form {
                Section("Enter your height (cm) and weight (kg)") {
                    TextField("Height (cm)", value: $height, format: .number)
                        .keyboardType(.decimalPad)
                    TextField("Weight (kg)", value: $weight, format: .number)
                        .keyboardType(.decimalPad)
                }
                Section {
                    Text("\(bmiMessage)")
                }
            }
            Button("Calculate BMI", action: updateBmi)
                .padding()
            
            
        }
    }
        
    func updateBmi() {
        if let height = height {
            if let weight = weight {
                let bmi = bmiCalculations.calculateBmi(weight: weight, height: height)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

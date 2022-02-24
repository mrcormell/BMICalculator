//
//  ContentView.swift
//  BMICalculator
//
//  Created by David Cormell on 23/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var height: Int = 0
    @State private var weight: Double = 0.0
    @State private var bmiMessage: String = ""
    
    var body: some View {
        VStack {
            Image("PublicHealth")
                .resizable()
            Form {
                TextField("Height (cm)", value: $height, format: .number)
                    .keyboardType(.numberPad)
                TextField("Weight (kg)", value: $weight, format: .number)
                    .keyboardType(.decimalPad)
            }
            Button("Calculate BMI", action: updateBmi)
            Text("\(bmiMessage)")
            
        }
    }
        
    func updateBmi() {
        let bmi = weight / pow(Double(height), 2)
        let classification = "Underweight"
        bmiMessage = "Your BMI is: \(bmi)\n You are \(classification)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

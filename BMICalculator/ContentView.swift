//
//  ContentView.swift
//  BMICalculator
//
//  Created by David Cormell on 23/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        VStack {
            Image("PublicHealth")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Form {
                Section("Enter your height (cm) and weight (kg)") {
                    TextField("Height (cm)", value: $vm.height, format: .number)
                        .keyboardType(.decimalPad)
                    TextField("Weight (kg)", value: $vm.weight, format: .number)
                        .keyboardType(.decimalPad)
                }
                Section {
                    Text("\(vm.bmiMessage)")
                }
            }
            Button("Calculate BMI", action: vm.updateBmi)
                .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

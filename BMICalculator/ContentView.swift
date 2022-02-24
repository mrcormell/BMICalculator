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
        NavigationView {
            VStack {
                Image("PublicHealth")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Form {
                    Section("Enter your \(vm.heightLabel) and \(vm.weightLabel)") {
                        Picker("Unit", selection: $vm.unit) {
                            ForEach(vm.units, id: \.self) {
                                Text($0.rawValue.capitalized)
                            }
                        }
                        TextField("\(vm.heightLabel)", value: $vm.height, format: .number)
                            .keyboardType(.decimalPad)
                        TextField("\(vm.weightLabel)", value: $vm.weight, format: .number)
                            .keyboardType(.decimalPad)
                    }
                    Section {
                        Text("\(vm.bmiMessage)")
                    }
                }
                Button("Calculate BMI", action: vm.updateBmi)
                    .padding()
            }
            .navigationBarHidden(true)

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  ConversionApp
//
//  Created by David Chung on 2025/11/16.
//

import SwiftUI

struct ContentView: View {
    @State private var lbWeight: Double = 0.0

    // Computed property that derives kilograms from the current pounds
    var kilograms: Double {
        lbWeight / 2.20462
    }

    var body: some View {
        NavigationStack {
            Form {
                // input
                Section("convert lbs to Kg") {
                    TextField("Amount", value: $lbWeight, format: .number)
                        .keyboardType(.decimalPad)
                }
                // output
                Section("Weight in Kg") {
                    Text(kilograms, format: .number)
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            .navigationTitle("ezConvert")
            
        }
    }
}

#Preview {
    ContentView()
}

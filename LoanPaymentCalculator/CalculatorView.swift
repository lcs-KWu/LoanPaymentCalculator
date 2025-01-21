//
//  ContentView.swift
//  LoanPaymentCalculator
//
//  Created by Yixuan Wu on 2025-01-20.
//

import SwiftUI

struct CalculatorView: View {
    var body: some View {
        NavigationStack{
            VStack {
              Text("This is a Loan payment Calulator")
                Text("Enter values to see what you have to pay per month!")
            }
        }
        .padding()
        .navigationTitle("Loan Payment Calculator")
    }
}

#Preview {
    CalculatorView()
}

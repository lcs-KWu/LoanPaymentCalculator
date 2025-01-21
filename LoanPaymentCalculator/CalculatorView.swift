//
//  ContentView.swift
//  LoanPaymentCalculator
//
//  Created by Yixuan Wu on 2025-01-20.
//

import SwiftUI

struct CalculatorView: View {
    
    //MARK: stored properties
    //feedback to user
    @State var givenInput  = ""
    @State var feedback  = ""
    //must need condition
    @State var loanRatio = Double.self
    @State var years = Double.self
    @State var loanAmount = Double.self
    
    //MARK: computed properties
   
    var  body: some View {
        NavigationStack{
            VStack (spacing:30){
              Text("This is a Loan payment Calulator")
                Text("Enter values to see what you have to pay per month!")
                TextField("Loan amount", text: $givenInput)
                
            }
        
        .padding()
        .navigationTitle("Loan Payment Calculator")
        }
    }
}

#Preview {
    CalculatorView()
}

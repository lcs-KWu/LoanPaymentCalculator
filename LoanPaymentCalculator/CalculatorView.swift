//
//  ContentView.swift
//  LoanPaymentCalculator
//
//  Created by Yixuan Wu on 2025-01-20.
//

import SwiftUI

struct CalculatorView: View {
    
    //MARK: stored properties
    @State var givenInput  = ""
    @State var feedback  = ""
    //must need condition
    @State var loanRatio = ""
    @State var years = ""
    @State var loanAmount = ""
    
    
    //MARK: computed properties
    var result : String {
        guard let loanRatioInt = Double(loanRatio),
              let yearsInt = Double(years),
              let loanAmountInt = Double(loanAmount)
        else {
            feedback = "Please provide an integer."
        }
        return loanAmountInt * loanRatioInt * yearsInt / 12
    }
    var  body: some View {
        NavigationStack{
            VStack (spacing:30){
                Text("This is a Loan payment Calulator")
                Text("Enter values to see what you have to pay per month!")
                TextField("Loan amount", text: $loanAmount)
                TextField("Loan time", text: $years)
                TextField("Loan ratio", text: $loanRatio)
                Text("\(result)")
            }
            
            
            .navigationTitle("Loan Payment Calculator")
        }
    }
    
}
    
    
    
    
    #Preview {
        CalculatorView()
    }

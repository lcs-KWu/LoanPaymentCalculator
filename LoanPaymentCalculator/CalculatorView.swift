//
//  ContentView.swift
//  LoanPaymentCalculator
//
//  Created by Yixuan Wu on 2025-01-20.
//

import SwiftUI

struct CalculatorView: View {
    
    //MARK: stored properties
    @State var feedback  = ""
    //must need condition
    @State var loanRatio = ""
    @State var years = ""
    @State var loanAmount = ""
    // List of prior results
    @State var priorResults: [HistoryResults] = []
    
    //MARK: computed properties
    var result : String {
        guard let loanRatioInt = Double(loanRatio),
              let yearsInt = Double(years),
              let loanAmountInt = Double(loanAmount)
        else {
            feedback = "Please provide an integer."
            return ""
        }
        let answer = (loanAmountInt + (loanAmountInt * loanRatioInt * yearsInt)) / 12
        return "\(answer)"
        
    }
    var  body: some View {
        NavigationStack{
            VStack (spacing:30){
                Text("This is a Loan payment Calulator")
                Text("Enter values to see what you have to pay per month!")
                TextField("Loan amount", text: $loanAmount)
                TextField("Loan time", text: $years)
                TextField("Loan ratio", text: $loanRatio)
                Button {
                    checkPayment()
                } label: {
                    Text("Check Your Payment")
                }
                .buttonStyle(.borderedProminent)
                Text(feedback)
                    .font(
                        .custom(
                            "BradleyHandITCTT-Bold",
                            size: 24.0,
                            relativeTo: .title3
                        )
                    )
                Button(action: {
                    let lastresult = HistoryResults(Anwser: " \(result)")
                    priorResults.append(lastresult)
                },label: {
                    Text("Save Result")
                })
            }
            
            
            .navigationTitle("Loan Payment Calculator")
            .font(
                .custom(
                    "BradleyHandITCTT-Bold",
                    size: 24.0,
                    relativeTo: .title3
                )
            )
            
        }.padding()
    }
    func checkPayment() {
        guard let loanRatioInt = Double(loanRatio),
              let yearsInt = Double(years),
              let loanAmountInt = Double(loanAmount)
        else {
            feedback = "Please provide an integer."
            return
        }
        feedback = "You have to pay \(result) per month!"
    }
}




#Preview {
    CalculatorView()
}

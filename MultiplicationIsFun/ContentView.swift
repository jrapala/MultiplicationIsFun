//
//  ContentView.swift
//  MultiplicationIsFun
//
//  Created by Juliette Rapala on 10/9/20.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct ContentView: View {
    @State private var tablePicked = 1
    @State private var numberOfRounds = "5"
    @State private var showTableOptions = true
    @State private var showRoundOptions = false
    @State private var showGameSetup = true

    let rounds = ["5", "10", "20", "All"]
    
    let columns = [
        GridItem(.adaptive(minimum: screen.width / 4), alignment: .center)
    ]
        
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            if showGameSetup {
                VStack(spacing: 50) {
                    Text("Multiplication is Fun!")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2)
                    
                    if showTableOptions {
                        ChooseTableView(tablePicked: $tablePicked)
                        ActionButton(text: "Next")
                    }
                    
                    if showRoundOptions {
                        ChooseRoundsView(numberOfRounds: $numberOfRounds)
                    }
                }
            }

        }
    }
}
         
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

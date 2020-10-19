//
//  ContentView.swift
//  MultiplicationIsFun
//
//  Created by Juliette Rapala on 10/9/20.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct ContentView: View {
    @State private var tablesPicked: [Int] = []
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
        
            VStack(spacing: 20) {
                if showGameSetup {
                    Text("Multiplication is Fun!")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2)
                
                    ZStack {
                        VStack(spacing: 50) {
                            if showTableOptions {
                                ChooseTableView(tablesPicked: $tablesPicked)
                                
                                Button("Next") {
                                    showRounds()
                                }
                                .modifier(ActionButtonModifier(isDisabled: tablesPicked.count == 0))
                                .disabled(tablesPicked.count == 0)
                            }
                            
                            if showRoundOptions {
                                ChooseRoundsView(numberOfRounds: $numberOfRounds)
                                
                                Button("Start Game") {
                                    startGame()
                                }
                                .modifier(ActionButtonModifier(isDisabled: tablesPicked.count == 0))
                                .disabled(tablesPicked.count == 0)
                            }
                        }
                        .frame(height: screen.height - 250)
                    }
                }
            }
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        }
    }
    
    func showRounds() {
        showTableOptions = false
        showRoundOptions = true
    }
    
    func startGame() {
        showRoundOptions = false
        showGameSetup = false
    }
}
         
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

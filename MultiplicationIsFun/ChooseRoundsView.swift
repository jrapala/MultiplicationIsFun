//
//  ChooseRoundsView.swift
//  MultiplicationIsFun
//
//  Created by Juliette Rapala on 10/10/20.
//

import SwiftUI

struct ChooseRoundsView: View {
    @Binding var numberOfRounds: String

    let rounds = ["5", "10", "20", "All"]

    var body: some View {
        VStack {
            Text("How Many Rounds?")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)

            HStack(spacing: 20) {
                ForEach(0 ..< rounds.count) { option in
                    Button(action: {
                        numberOfRounds = rounds[option]
                    }) {
                        ZStack {
                            Color(#colorLiteral(red: 0.8951529344, green: 0.4050776695, blue: 0.6432097152, alpha: 1))
                                .frame(width: 70, height: 70, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)

                            Text("\(rounds[option])")
                                .font(.system(size: 35, weight: .bold))
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 1)
                        }
                    }
                }
            }
        }
    }
}

struct ChooseRoundsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            ChooseRoundsView(numberOfRounds: .constant("5"))
        }
    }
}

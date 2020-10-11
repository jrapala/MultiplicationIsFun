//
//  ChooseTableView.swift
//  MultiplicationIsFun
//
//  Created by Juliette Rapala on 10/10/20.
//

import SwiftUI

struct ChooseTableView: View {
    @Binding var tablePicked: Int
    
    let columns = [
        GridItem(.adaptive(minimum: screen.width / 4), alignment: .center)
    ]

    var body: some View {
        VStack {
            Text("Choose a Table:")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                
    
            LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
                ForEach(1 ..< 13) { number in
                    Button(action: {
                        tablePicked = number
                    }) {
                        ZStack {
                            Color(#colorLiteral(red: 0.8951529344, green: 0.4050776695, blue: 0.6432097152, alpha: 1))
                                .frame(width: 80, height: 80, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                            
                            Text("\(number)")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 1)
                        }
                    }
                }
            }
            
        }
    }
}

struct ChooseTableView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseTableView(tablePicked: .constant(1))
    }
}

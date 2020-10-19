//
//  ChooseTableView.swift
//  MultiplicationIsFun
//
//  Created by Juliette Rapala on 10/10/20.
//

import SwiftUI

struct ChooseTableView: View {
    @Binding var tablesPicked: [Int]
    
    let columns = [
        GridItem(.adaptive(minimum: screen.width / 4), alignment: .center)
    ]

    var body: some View {
        VStack {
            Text("Choose Your Table(s):")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
                
    
            LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
                ForEach(1 ..< 13) { number in
                    Button(action: {
                        if tablesPicked.contains(number) {
                            let index = tablesPicked.firstIndex(of: number)
                            tablesPicked.remove(at: index!)
                        } else {
                            tablesPicked.append(number)
                        }
                    }) {
                        ZStack {
                            Color(tablesPicked.contains(number) ? #colorLiteral(red: 0.8951529344, green: 0.4050776695, blue: 0.6432097152, alpha: 1) : #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
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
        ZStack {
            Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            ChooseTableView(tablesPicked: .constant([]))
        }
    }
}

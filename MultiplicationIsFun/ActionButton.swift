//
//  ActionButton.swift
//  MultiplicationIsFun
//
//  Created by Juliette Rapala on 10/11/20.
//

import SwiftUI

struct ActionButton: View {
    var text: String
    
    var body: some View {
        Button(action: {
            
        }) {
            ZStack {
                Color(#colorLiteral(red: 0.8951529344, green: 0.4050776695, blue: 0.6432097152, alpha: 1))
                    .frame(minWidth: 0, idealWidth: 180, maxWidth: 200, minHeight: 0, idealHeight: 40, maxHeight: 50, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                
                Text(text)
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 1)
            }
        }
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(text: "Button Text")
    }
}

//
//  Modifiers.swift
//  MultiplicationIsFun
//
//  Created by Juliette Rapala on 10/11/20.
//

import SwiftUI

struct ActionButtonModifier: ViewModifier {
    let isDisabled: Bool

    func body(content: Content) -> some View {
        content
            .font(.system(size: 25, weight: .bold))
            .frame(minWidth: 0, idealWidth: 180, maxWidth: 200, minHeight: 0, idealHeight: 40, maxHeight: 50, alignment: .center)
            .background(Color(#colorLiteral(red: 0.8951529344, green: 0.4050776695, blue: 0.6432097152, alpha: 1)))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
            .opacity(isDisabled ? 0.5 : 1)
    }
}

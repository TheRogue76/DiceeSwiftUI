//
//  RollButton.swift
//  DiceeSwiftUI
//
//  Created by Parsa Nasirimehr on 12/12/1399 AP.
//

import SwiftUI

struct RollButton: View {
    @Binding var leftDiceNumber: Int
    @Binding var rightDiceNumber: Int
    var body: some View {
        Button(action: {
            self.leftDiceNumber = Int.random(in: 1...6)
            self.rightDiceNumber = Int.random(in: 1...6)
        }, label: {
            Text(constants.rollButton)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal)
        })
        .background(Color.red)
        .cornerRadius(15)
    }
}

struct RollButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
            RollButton(leftDiceNumber: .constant(1), rightDiceNumber: .constant(2))
        }
    }
}

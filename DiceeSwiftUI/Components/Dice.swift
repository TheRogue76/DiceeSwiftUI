//
//  Dice.swift
//  DiceeSwiftUI
//
//  Created by Parsa Nasirimehr on 12/12/1399 AP.
//

import SwiftUI

struct Dice: View {
    var image: Int
    var body: some View {
        Image("\(constants.dice)\(String(image))")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

struct Dice_Previews: PreviewProvider {
    static var previews: some View {
        Dice(image: 1)
    }
}

//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Parsa Nasirimehr on 12/12/1399 AP.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 2
    var body: some View {
        ZStack {
            BackGroundImage()
            VStack {
                Logo()
                Spacer()
                HStack {
                    Dice(image: leftDiceNumber)
                    Dice(image: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                RollButton(leftDiceNumber: $leftDiceNumber, rightDiceNumber: $rightDiceNumber)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(constants.devices, id: \.self) { device in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: device))
        }
    }
}

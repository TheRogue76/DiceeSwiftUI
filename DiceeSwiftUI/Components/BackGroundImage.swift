//
//  BackGroundImage.swift
//  DiceeSwiftUI
//
//  Created by Parsa Nasirimehr on 12/12/1399 AP.
//

import SwiftUI

struct BackGroundImage: View {
    var body: some View {
        Image(constants.bgImage)
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackGroundImage_Previews: PreviewProvider {
    static var previews: some View {
        BackGroundImage()
    }
}

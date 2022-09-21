//
//  Picture.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct Picture: View {
    var body: some View {
        Image("Screenshot")
            .renderingMode(.template) // Change the background and color of image
            .resizable()
            .aspectRatio(contentMode:.fill)
            .frame(width: 300,height: 200)
            .foregroundColor(.green)
            //.cornerRadius(24)
            .clipShape(
                //Circle()
                RoundedRectangle(cornerRadius: 12)
            )
    }
}

struct Picture_Previews: PreviewProvider {
    static var previews: some View {
        Picture()
    }
}

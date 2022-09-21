//
//  ColorView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //Color.primary
               // Color(uiColor: .secondarySystemFill) //Access UI COLOR
                Color("CustomColor") //Custom color from Color Asset
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: .red .opacity(0.5), radius: 10 ,x: -10,y: -10 )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}

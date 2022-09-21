//
//  GrediantView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct GrediantView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //Color.green
//                LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]),
//                               startPoint: .topLeading,
//                               endPoint: .bottomTrailing)
//                RadialGradient(colors: [Color.red,Color.blue],//Gredint with
//                               center: .bottomTrailing,
//                               startRadius: 45,
//                               endRadius: 200)
                AngularGradient(gradient:  Gradient(colors: [Color.red,Color.blue]),
                                center: .topLeading,
                                angle:  .degrees(180 ))
            )
            .frame(width: 300, height: 200)
    }
}

struct GrediantView_Previews: PreviewProvider {
    static var previews: some View {
        GrediantView()
    }
}

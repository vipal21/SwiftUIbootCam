//
//  MaterialsView.swift
//  TextComponent
//
//  Created by Vipal on 21/09/22.
//

import SwiftUI

struct MaterialsView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 4.0)
                    .frame(width:50,height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30.0)
        }
        .ignoresSafeArea()
        .background(
            Image("Screenshot")
        )
    }
}

struct MaterialsView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialsView()
    }
}

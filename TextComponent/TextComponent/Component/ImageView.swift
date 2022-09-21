//
//  ImageView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
            //.foregroundColor(.green)
            .frame(width: 200,height: 200)
            //.clipped()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

//
//  PageTabView.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct PageTabView: View {
    let icons : [String] = ["heart.fill","globe","person.fill"]
    var body: some View {
        TabView {
            ForEach(icons , id: \.self) { item in
                Image(systemName: item)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.green)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.yellow)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.blue)
        }
        .background(Color.yellow)
        .frame(height: 300)
        .tabViewStyle(.page)
    }
}

struct PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        PageTabView()
    }
}

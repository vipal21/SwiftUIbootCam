//
//  ContextViewDemo.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct ContextViewDemo: View {
    @State var bachground : Color = .gray
    var body: some View {
       
        VStack(alignment: .leading, spacing: 20){
            Image(systemName: "house.fill")
            Text("SwiftUI")
                .font(.headline)
            Text("Context Menu")
                .font(.subheadline)
        }
        .padding(30)
        .background(bachground .cornerRadius(20))
        .foregroundColor(.white)
        .contextMenu {
            Button {
                        // Add this item to a list of favorites.
                bachground = .red
                    } label: {
                        Label("Add to Favorites", systemImage: "heart")
                    }
                    Button {
                        // Open Maps and center it on this item.
                        bachground = .green
                    } label: {
                        Label("Show in Maps", systemImage: "mappin")
                    }
        }
    }
}

struct ContextViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ContextViewDemo()
    }
}
//var body: some View {
//    VStack(alignment: .leading, spacing: 20){
//        Image(systemName: "house.fill")
//        Text("SwiftUI")
//        font(.headline)
//        Text("Context Menu")
//        font(.subheadline)
//    }
//    .background(Color.gray)
//    .cornerRadius(20)
//    .foregroundColor(.red)
//    .contextMenu {
//        Button {
//                    // Add this item to a list of favorites.
//                } label: {
//                    Label("Add to Favorites", systemImage: "heart")
//                }
//                Button {
//                    // Open Maps and center it on this item.
//                } label: {
//                    Label("Show in Maps", systemImage: "mappin")
//                }
//    }
//}

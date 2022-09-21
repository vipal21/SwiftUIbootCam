//
//  BadgeView.swift
//  TextComponent
//
//  Created by Vipal on 21/09/22.
//

import SwiftUI

//List and Tab only works
struct BadgeView: View {
    @State var fruits: [String] = ["apple","mango","banana","jackfruit"]
    var body: some View {
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Screen1")
//                }.badge(1)
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Screen2")
//                }.badge(2)
//            Color.yellow
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Screen3")
//                }.badge(3)
//        }
        
        List{
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized).badge(2)
                    
            }
           
        }

    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}

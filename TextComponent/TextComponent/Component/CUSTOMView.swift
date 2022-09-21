//
//  CUSTOMView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct CUSTOMView: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
           
            HStack(spacing: 30) {
                MyItem(title: "1", title2: "View1", color: .gray)
                MyItem(title: "12", title2: "View12", color: .yellow)
                MyItem(title: "123", title2: "View123", color: .blue)
            }
        }
    }
}

struct CUSTOMView_Previews: PreviewProvider {
    static var previews: some View {
        CUSTOMView()
    }
}

struct MyItem: View {
    var title:String
    var title2:String
    var color:Color
    var body: some View {
        VStack{
            Text(title)
            Text(title2)
        }.padding(10)
        .background(){
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
        }
    }
}

//
//  BindingView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct BindingView: View {
    @State var background : Color = .green
    @State var title:String = "title"
    var body: some View {
        ZStack{
            background
                .ignoresSafeArea()
            VStack{
                Text(title)
                SubView(background: $background, title: $title)
            }
           
        }
     

    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}

struct SubView: View {
    @Binding var background : Color
    @Binding var title : String
    @State var buttonColor:Color = .gray
    var body: some View {
        Button {
            self.background = .yellow
            self.buttonColor = .purple
            self.title = "Update"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding(10)
                .scenePadding(.horizontal)
                .background{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(buttonColor)
                    
                }
        }
    }
}

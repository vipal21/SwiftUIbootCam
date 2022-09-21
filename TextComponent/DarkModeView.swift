//
//  DarkModeView.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct DarkModeView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing : 20){
                    Text("primary")
                        .foregroundColor(.primary)
                    Text("primary")
                        .foregroundColor(.secondary)
                    Text("black")
                        .foregroundColor(.black)
                    Text("white")
                        .foregroundColor(.white )
                    Text("CustomColor")
                        .foregroundColor(Color("CustomColor"))
                }
                Text("LocalColor")
                    .foregroundColor(colorScheme == .light ? Color.black : Color.white)
            }
               
            }
            .navigationTitle("Demo")
        }
       
    }


struct DarkModeView_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeView()
    }
}

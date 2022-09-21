//
//  NavigationView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct NavigationViewDemo: View {
    var body: some View {
        NavigationView{
            ScrollView {
                NavigationLink("Hello", destination: Scr2en())
                Text("Hello")
            }
            .navigationTitle("Title")
            //.navigationBarTitleDisplayMode(.automatic)
           // .navigationBarHidden(false)
            .navigationBarItems(leading: Image(systemName: "person.fill"), trailing:
                                    NavigationLink(destination: {
                Text("NewScreen")
            }, label: {
                Image(systemName: "person.fill")
            }).accentColor(.red)
            )
        }
    }
}

struct Scr2en: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
            ScrollView {
                VStack{
                    Button("Back") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    NavigationLink("Hello", destination: Scr2en())
                }
                
                Text("Hello")
                    .navigationTitle("SecodScreen")
                    .navigationBarHidden(true)
            }
     
        
    }
}
struct Scr3en: View {
    var body: some View {
        
            ScrollView {
              
                Text("Hello")
                    .navigationTitle("Scr3en")
            }
     
        
    }
}
struct NavigationViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewDemo()
    }
}

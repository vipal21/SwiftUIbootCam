//
//  ContentView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       // Text("Hello Wrold".uppercased()) // we can you this method for uppercase and lower cased the String
        Text("Hello Wrold")
//            .bold() //Bold
//            .italic()//Itlaic
//            .underline()//UnderLin
           // .strikethrough(true, color:.green)
            // .font(.system(size: 22,weight: .medium,design: .serif)) // set your font and releted properties
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.green)
            .frame(width: 300, height: 200 ,alignment: .leading)
            .minimumScaleFactor(0.1) // Automatically decreace the sixe of the font
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

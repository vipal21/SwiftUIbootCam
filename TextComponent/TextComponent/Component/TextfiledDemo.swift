//
//  TextfiledDemo.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct TextfiledDemo: View {
    @State  var text :String = ""
    @State  var savedtext :String = ""
    
    var body: some View {
        VStack {
            Text(savedtext)
            TextField("UserName", text: $text)
                .padding(20)
                .background(Color.gray.cornerRadius(20))
                .foregroundColor(.white)
            Button {
                savedtext = text
            } label: {
                    Text("Save")
                    .padding(20)
                    .background(Color.gray.cornerRadius(20))
                    .foregroundColor(.white)
            }

        }
            //.textFieldStyle(.roundedBorder)
    }
}

struct TextfiledDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextfiledDemo()
    }
}

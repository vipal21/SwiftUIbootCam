//
//  TextEditorView.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct TextEditorViewDemo: View {
    @State var text :String = ""
    @State var savedtext :String = ""
    var body: some View {
        VStack {
            Spacer()
            TextEditor(text: $text)
                .frame(height: 300)
            Button("Save") {
                savedtext = text
            }
            Text(savedtext)
            Spacer()
        }
        
        
    }
}

struct TextEditorViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorViewDemo()
    }
}

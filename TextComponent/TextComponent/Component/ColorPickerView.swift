//
//  ColorPickerView.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct ColorPickerView: View {
    @State var selection :Bool = true
    @State var selectionColor : Color = Color.gray
    var body: some View {
        ZStack{
                selectionColor
                .ignoresSafeArea()
            VStack{
                ColorPicker("Sleect", selection: $selectionColor , supportsOpacity: true)
            }
        }
        
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}

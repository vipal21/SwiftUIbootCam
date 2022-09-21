//
//  ButtoniOS15View.swift
//  TextComponent
//
//  Created by Vipal on 21/09/22.
//

import SwiftUI

struct ButtoniOS15View: View {
    var body: some View {
        VStack{
            Button("plain") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.plain)
           
            
            Button("bordered") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.bordered)
           // for border .buttonBorderShape(.roundedRectangle)
            Button("borderedProminent") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
            
            Button("borderless") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderless)
            
       
        }
    }
}

struct ButtoniOS15View_Previews: PreviewProvider {
    static var previews: some View {
        ButtoniOS15View()
    }
}

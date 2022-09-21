//
//  TapgestureDemo.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct TapgestureDemo: View {
    @State var title :String = ""
    var body: some View {
        VStack(){
            Text(title)
            Text("Press Me").onTapGesture {
                title = "I am Tapped"
            }
            Text("Press Me 2 time").onTapGesture(count: 2) {
                title = "I am 2 times Tapped"
            }
        }
       
    }
}

struct TapgestureDemo_Previews: PreviewProvider {
    static var previews: some View {
        TapgestureDemo()
    }
}

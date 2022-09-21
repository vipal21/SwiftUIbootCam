//
//  TernaryView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct TernaryView: View {
    @State var isShowMessage : Bool = false
    var body: some View {
        VStack(spacing:50){
            Button("PressMe") {
                self.isShowMessage.toggle()
            }
            Text ( isShowMessage ? "true" : "false")
        }
    }
}

struct TernaryView_Previews: PreviewProvider {
    static var previews: some View {
        TernaryView()
    }
}

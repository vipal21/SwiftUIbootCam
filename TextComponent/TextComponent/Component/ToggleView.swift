//
//  ToggleView.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct ToggleView: View {
    @State var isOn :Bool = false
    var body: some View {
        

        Toggle("Switch", isOn: $isOn)
            .toggleStyle(SwitchToggleStyle(tint: .red))
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}

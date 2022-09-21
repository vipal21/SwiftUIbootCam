//
//  PickerDemo.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct PickerDemo: View {
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }

    @State private var selectedFlavor: Flavor = .chocolate
    
    var body: some View {
        VStack{
            
            showPicker2()
                 
                }
            }
    func showPicker () -> some View {
       return Picker("Flavor", selection: $selectedFlavor)
        {
            Text("Chocolate").tag(Flavor.chocolate)
            Text("Vanilla").tag(Flavor.vanilla)
            Text("Strawberry").tag(Flavor.strawberry)
        }
    }
    func showPicker2 () -> some View {
       return Picker("Flavor", selection: $selectedFlavor)
        {
            Text("Chocolate").tag(Flavor.chocolate)
            Text("Vanilla").tag(Flavor.vanilla)
            Text("Strawberry").tag(Flavor.strawberry)
        }.pickerStyle(SegmentedPickerStyle())
    }
    
        }


struct PickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        PickerDemo()
    }
}

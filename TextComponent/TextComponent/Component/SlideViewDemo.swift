//
//  SlideViewDemo.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct SlideViewDemo: View {
    @State var point :Double = 5.0
    @State var color:Color = .green
    var body: some View {
        VStack {
            Text (
                String(format: "%.0f", point)
                
            ).foregroundColor(color)
            
            showSimpleSlider4()
        }
    }
    func showSimpleSlider4 () -> some View{
//        Slider(value: $point,
//               in: 0...5) {
//            //Lable
//            Text("title")
//        } onEditingChanged: { _  in
//            color = .yellow
//        } minimumValueLabel: {
//            Text("1")
//        } maximumValueLabel: {
//            Text("5")
//        })
        Slider(value: $point,
               in:  0...5) {
            Text("title")
        } minimumValueLabel: {
            Text("0")
        } maximumValueLabel: {
            Text("5")
        }onEditingChanged: { _  in
            color = .yellow
        }


       
    }
    func showSimpleSlider3 () -> some View{
        Slider(value: $point , in: 1...10 ,step: 1.0)
       // Slider(value: $point , in: 1...10 ,step: 0.5)
    }
    func showSimpleSlider2 () -> some View{
        Slider(value: $point , in: 1...10)
    }
    func showSimpleSlider () -> some View{
        Slider(value: $point)
    }
}

struct SlideViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        SlideViewDemo()
    }
}

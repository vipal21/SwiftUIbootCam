//
//  AnimaitonCurveView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct AnimaitonCurveView: View {
    @State var isAnimating : Bool = false
    var body: some View {
        ScrollView {
            VStack{
                Button("Button") {
                    isAnimating.toggle()
                }
                RoundedRectangle(cornerRadius: 20)
                    .fill(.red)
                    .frame(width: isAnimating ? 100 : 200 ,height: 50)
                    .animation(Animation.spring(response: 1.0 ,dampingFraction: 0.2 ,blendDuration: 1.0),value: isAnimating)
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(.red)
//                    .frame(width: isAnimating ? 100 : 200 ,height: 50)
//                    .animation(Animation.easeInOut(duration: 1.0), value: isAnimating)
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(.green)
//                    .frame(width: isAnimating ? 100 : 200 ,height: 50)
//                    .animation(Animation.easeIn(duration: 1.0), value: isAnimating)
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(.yellow)
//                    .frame(width: isAnimating ? 100 : 200 ,height: 50)
//                    .animation(Animation.easeInOut(duration: 1.0), value: isAnimating)
//                RoundedRectangle(cornerRadius: 20)
//                    .fill(.blue)
//                    .frame(width: isAnimating ? 100 : 200 ,height: 50)
//                    .animation(Animation.linear(duration: 1.0), value: isAnimating)
        
            }
        }
        
    }
}

struct AnimaitonCurveView_Previews: PreviewProvider {
    static var previews: some View {
        AnimaitonCurveView()
    }
}

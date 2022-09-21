//
//  BackgroundOverlay.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct BackgroundOverlay: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .background{
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue,.red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 100,height: 100)
                    .overlay(
                        Circle().fill(.green)
                            .frame(width: 30,height: 30)
                            .overlay(alignment: .center, content: {
                                Text("5")
                            })
                        ,alignment: .bottomTrailing)
                    
                    .shadow(color: .green, radius: 10, x: 0, y: 10)

            }
//        Rectangle()
//            .frame(width: 200,height: 100)
//            .overlay(alignment: .center, content:{
//                Rectangle().fill(.green)
//                    .frame(width: 50,height: 50)
//            })
//            .background(alignment: .bottom){
//                Rectangle().fill(.red)
//                    .frame(width: 250,height: 120)
//            }
//
//                Circle()
//                    .fill(.red)
//                    .frame(width: 100, height: 100)
//                    .overlay {
//                        Text("1")
//                            .font(.largeTitle)
//                            .foregroundColor(.white)
//
//                    }
//                    .background{
//                        Circle().fill(.blue)
//                            .frame(width: 300,height: 300)
//                    }

            
    }
}

struct BackgroundOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlay()
    }
}

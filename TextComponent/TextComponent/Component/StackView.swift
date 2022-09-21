//
//  StackView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct StackView: View {
    
    //HSTACK -> Horizontal // top,bottom, center
    //VSTACK -> Vertical
    //ZSTACK -> back t front
    var body: some View {
        ZStack(alignment: .center){
            Rectangle()
                .fill(.red)
                .frame(width: 300,height: 600)
            VStack (spacing:20){
                Rectangle()
                    .fill(.green)
                    .frame(width: 200,height: 400)
                HStack{
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 100,height: 100)
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100,height: 100)
                }
            }
         
        }
//        HStack(alignment: .center,spacing: 0){
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200,height: 200)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150,height: 150)
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 100,height: 100)
//        }
//        VStack(alignment: .trailing,spacing: 0){
//
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200,height: 200)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 150,height: 150)
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 100,height: 100)
//        }


    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}

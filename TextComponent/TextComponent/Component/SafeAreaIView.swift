//
//  SafeAreaIView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct SafeAreaIView: View {
    var body: some View {
//        ZStack {
//            Color.green //BackGround
//                .edgesIgnoringSafeArea(.all)
//          //Forground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//
//            }
//            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(Color.red)
//        }
        ScrollView {
            VStack {
                Text("Hello")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                
                ForEach(0..<10){ index in
                    RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
                }
                    
            }
            
        }.background{
            Color.red
                .ignoresSafeArea()
        }
    }
}

struct SafeAreaIView_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaIView()
    }
}

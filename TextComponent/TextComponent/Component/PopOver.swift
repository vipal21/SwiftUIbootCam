//
//  RevisionView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct PopOver: View {
    @State var isPresented : Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            VStack{
                Button("Button") {
                    isPresented = true
                }
                .font(.system(size: 20,weight: .semibold))
                .foregroundColor(Color.white)
               
//                .sheet(isPresented:$isPresented) {
//                    Screen2()
//                }
            
                
            }
//            ZStack{
//                if isPresented {
//                    Screen2(isPresented: $isPresented)
//                        .padding(.top ,100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            Screen2(isPresented:$isPresented)
                .padding(.top ,100)
                .offset(y: isPresented ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
        
    }
}
struct Screen2: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var isPresented : Bool
    
    var body: some View {
        ZStack (alignment:.topLeading){
            Color.red
                .ignoresSafeArea()
            VStack{
                Button("Button") {
                   // presentationMode.wrappedValue.dismiss()
                    isPresented = false
                }
                .font(.system(size: 20,weight: .semibold))
                .foregroundColor(Color.white)
            
                
            }
        }
        
    }
}
struct RevisionView_Previews: PreviewProvider {
    static var previews: some View {
        PopOver()
        //Screen2()
    }
}

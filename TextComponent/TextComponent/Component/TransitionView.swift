//
//  TransitionView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct TransitionView: View {
   @State var isShow :Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            Spacer()
            VStack(){
                Spacer()
                Button("Button"){
                    isShow.toggle()
    
                }
                Spacer()
                Spacer()
              
            }
            if isShow {
                RoundedRectangle(cornerRadius:20)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
                    //.transition(.asymmetric(insertion: .scale, removal: .slide))
                    //.animation(.easeInOut)
                    .animation(.spring())
                    
            }
           
        }.ignoresSafeArea()
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}

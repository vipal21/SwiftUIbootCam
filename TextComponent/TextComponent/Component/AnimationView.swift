//
//  AnimationView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct AnimationView: View {
   @State var isChangeBlue:Bool = false
    var body: some View {
        
        VStack{
            Spacer()
            Button("Press") {
                withAnimation(Animation.default.delay(1.0).repeatCount(5,autoreverses: true)){
                    isChangeBlue.toggle()
                }
              
            }
            Spacer()
            RoundedRectangle(cornerRadius: isChangeBlue ? 50 :25)
                .fill(isChangeBlue ? .blue : .gray)
                .frame(width: 100,height: 100)
                .rotationEffect(Angle(degrees: isChangeBlue ? 45 : 0))
                .offset(y: isChangeBlue ? 200 : 0 )
            Spacer()
            
        }
        
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}

//
//  IntroView.swift
//  TextComponent
//
//  Created by Vipal on 18/09/22.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("isSignedIn") var isSignedIn :Bool = false
    let transition : AnyTransition = .asymmetric(insertion: .move(edge: .bottom),
                                                 removal: .move(edge: .top))
    let transition2 : AnyTransition = .asymmetric(insertion: .move(edge: .top),
                                                 removal: .move(edge: .bottom))
    
    var body: some View {
        ZStack{
       
            RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)) ,Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]),
                           center: .topLeading,
                           startRadius:5,
                           endRadius: UIScreen.main.bounds.height)
                            .ignoresSafeArea()
            //if user sign in go to profile
            // inf not onboardvoew
            if(isSignedIn){
                ProfileView()
                    .transition(transition)
            }else{
                OnBoardView()
                    .transition(transition2)
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}

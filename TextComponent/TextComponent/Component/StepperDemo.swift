//
//  StepperDemo.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct StepperDemo: View {
    @State var stepprvlaue:Int = 10
    @State var customWidth:CGFloat = 10
    var body: some View {
        VStack(spacing:20){
            RoundedRectangle(cornerRadius: 20).frame(width: customWidth,height: 20)
            showStepprWithIncAndDnc()
        }
       
    }
    func showSteppr () -> some View{
        Stepper("Steppr: \(stepprvlaue)", value: $stepprvlaue)
    }
    func showStepprWithIncAndDnc () -> some View{
        Stepper("StepprWithIncrementDecrement") {
            //Increment
            withAnimation(Animation.easeInOut) {
                customWidth += 10
            }
           
        } onDecrement: {
            //Decrement
            withAnimation(Animation.easeInOut) {
                customWidth -= 10
            }
           
        }

    }
}

struct StepperDemo_Previews: PreviewProvider {
    static var previews: some View {
        StepperDemo()
    }
}

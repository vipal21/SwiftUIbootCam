//
//  FunctionComponentView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct FunctionComponentView: View {
    @State var backgroundColor : Color = Color.yellow
    var content: some View {
        VStack(spacing:20){
            Text("Title")
                .font(.largeTitle)
            Button {
                self.buttonPress()
            } label: {
                Text("press me".uppercased())
                    .font(.system(size: 17,weight: .semibold))
                    .foregroundColor(Color.white)
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.black)
                            .frame(width: 150, height: 40)
                    }
            }
            
        }
    }
    
    var body: some View {
        ZStack{
           backgroundColor
                .ignoresSafeArea()
            content
        }
       
    }
    //MARK: function
    func buttonPress(){
        self.backgroundColor = .green
    }
    
}

struct FunctionComponentView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionComponentView()
    }
}



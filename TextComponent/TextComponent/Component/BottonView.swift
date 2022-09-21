//
//  BottonView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct BottonView: View {
   @State var title : String = "This is Title"
    var body: some View {
       
        VStack {
            Text(title)
            Button(self.title) {
                self.title = "i am clicked"
            }
            Button {
                self.title = "i am clicked"
            } label: {
                Text("Custom Button")
                    .foregroundColor(Color.white)
                    .background{
                    RoundedRectangle(cornerRadius: 10)
                            .frame(width:200, height: 50)
                            
                }
            }.padding(.top,50)

           
        }
    }
}

struct BottonView_Previews: PreviewProvider {
    static var previews: some View {
        BottonView()
    }
}

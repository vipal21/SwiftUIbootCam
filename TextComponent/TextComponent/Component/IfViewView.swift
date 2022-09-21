//
//  IfViewView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct IfViewView: View
{
    @State var isLoading : Bool = false
    var body: some View {
        VStack(spacing:50)
        {
            Button {
                isLoading.toggle()
            } label: {
                Text("hello")
            }
            if(isLoading){
                ProgressView()
            }else{
                Text("data")
            }
            

        }
    }
}

struct IfViewView_Previews: PreviewProvider {
    static var previews: some View {
        IfViewView()
    }
}

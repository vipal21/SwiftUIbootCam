//
//  PaddindView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct PaddindView: View {
    var body: some View {
        VStack (alignment:.leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            .fontWeight(.semibold)
            Text("ndkjasndklasnkasnklnakldxnsakmdskalmlksamklklmsLKmalmlm;ml;amxlamsklamSLK")
             
        }.padding()
            
    }
}

struct PaddindView_Previews: PreviewProvider {
    static var previews: some View {
        PaddindView()
    }
}

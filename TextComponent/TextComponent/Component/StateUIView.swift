//
//  StateUIView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct StateUIView: View {
    @State var backgroundColor :Color = Color.gray
    @State var title : String = "title 1"
    @State var count = 0
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            VStack{
                Text(title)
                Text ("Count :\(count)")
                
                
                HStack (spacing: 20){
                    Button("increace") {
                        backgroundColor = .red
                        self.title = "Hello red"
                        self.count += 1
                    }
                    Button("decrease") {
                        self.title = "Hello blue"
                        backgroundColor = .blue
                        self.count -= 1
                    }
                }
                .padding(20)
            }.foregroundColor(Color.white)
        }
    }
}

struct StateUIView_Previews: PreviewProvider {
    static var previews: some View {
        StateUIView()
    }
}

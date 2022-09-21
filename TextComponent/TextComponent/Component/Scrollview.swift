//
//  ScrollView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct Scrollview: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack{
                ForEach(0..<10) { index in
                    ScrollView(.horizontal) {
                        LazyHStack{
                            ForEach(0..<10) { index in
                                Rectangle().fill(.white)
                                    .frame(width: 200, height: 150)
                                    .cornerRadius(20)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                    
                }
            }
        }
        
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        Scrollview()
    }
}

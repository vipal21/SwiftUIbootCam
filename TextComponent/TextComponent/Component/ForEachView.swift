//
//  ForEachView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct ForEachView: View {
    let data : [String] = ["Hi","Hello"]
    let myString:String = "Hello"
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                Text("\(data[index]) \(index)")
            }
           
            
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}

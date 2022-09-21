//
//  SapcerView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct SapcerView: View {
    var body: some View {
        HStack{
            Spacer(minLength: 0).frame(height: 10).background(Color.green)
            Rectangle()
            .frame(width: 50, height: 50)
            Spacer().frame(height: 10).background(Color.green)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer().frame(height: 10).background(Color.green)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 50, height: 50)
            
            Spacer().frame(height: 10).background(Color.green)
        }
        .background(Color.blue)
        .padding(.horizontal,200)
        .background(Color.red)
    }
}

struct SapcerView_Previews: PreviewProvider {
    static var previews: some View {
        SapcerView()
    }
}

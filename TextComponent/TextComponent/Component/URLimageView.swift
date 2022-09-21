//
//  URLimageView.swift
//  TextComponent
//
//  Created by Vipal on 21/09/22.
//

import SwiftUI

struct URLimageView: View {
    var url = URL(string: "https://picsum.photos/200")
    var body: some View {
      
//        AsyncImage(url: url) { image in
//            image.resizable()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        } placeholder: {
//            ProgressView()
//        }
        AsyncImage(url:url) { phase in
            if let image = phase.image {
                image.resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            } else if phase.error != nil {
                Image("questionmark")
                    .font(.headline) // Indicates an error.
            } else {
                ProgressView()// Acts as a placeholder.
            }
        }

    }
}

struct URLimageView_Previews: PreviewProvider {
    static var previews: some View {
        URLimageView()
    }
}

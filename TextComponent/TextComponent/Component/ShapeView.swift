//
//  ShapeView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
        //Rectangle()
        //Capsule(style: .continuous)
        //Ellipse()
       // Circle()
        //.fill(Color.blue)
            //.foregroundColor(.green)
            //.stroke()
            //.stroke(Color.red)//Border color
           // .stroke(Color.red,lineWidth: 10)//Border color
//            .strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 20,lineCap: .square,dash:[23] )) // Circle with Dash Border
           // .trim(from: 0.2 , to: 1.0) // trim the circle
            //.stroke(Color.red,lineWidth: 10)//Border color
            .frame(width: 350,height : 200)

    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}

//
//  InitView.swift
//  TextComponent
//
//  Created by Vipal on 14/09/22.
//

import SwiftUI

struct InitView: View {
    let backgroundColor :Color
    let count :Int
    let title:String
    
    init(count:Int , fruit:Fruit) {
        self.count = count
        if(fruit == .apple){
            self.title = "Apple"
            self.backgroundColor = Color.red
        }else{
            self.title = "Banana"
            self.backgroundColor = Color.yellow
        }
       
      
        
    }
    enum Fruit {
        case apple
        case orange
    }
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .foregroundColor(.white)
        }.frame(width: 150,height: 150)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

struct InitView_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitView( count: 22, fruit: .apple)
            InitView( count: 22, fruit: .orange)
        }
        
    }
}

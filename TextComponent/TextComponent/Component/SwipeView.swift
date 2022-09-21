//
//  SwipeView.swift
//  TextComponent
//
//  Created by Vipal on 21/09/22.
//

import SwiftUI

struct SwipeView: View {
    @State var fruits: [String] = ["apple","mango","banana","jackfruit"]
    var body: some View {
        List{
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }.tint(.green)
                        Button("mail") {
                            
                        }.tint(.blue)
                        Button("delete") {
                            
                        }.tint(.red)
                    }
                    .swipeActions(edge: .leading,
                                allowsFullSwipe: true)
                                {
                                    Button("Share") {
                                          
                                      }.tint(.green)
                                      
                                  }
            }
            //            .onDelete { index in
            //                delete(indexSet: index)
            //            }
        }
    }
    func delete (indexSet:IndexSet){
        
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView()
    }
}

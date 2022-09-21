//
//  ListView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct ListView: View {
    @State var fruits: [String] = ["apple","mango","banana","jackfruit"]
    @State var veg: [String] = ["tomato","patoto","carrot","lemon"]
    var body: some View {
        NavigationView {
            List{
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text("\(fruit)".capitalized)
                    }.onDelete { index  in
                        delete(index: index)
                    }
                    .onMove { index, newOffset in
                        move(index: index, newOffset: newOffset)
                    }
                    .listRowBackground(Color.red)
                }
            header:
                {
                    HStack {
                        Text("Section 1")
                            .font(.title2)
                        Image(systemName: "heart.fill")
                    }
                   
                }
                Section {
                    ForEach(veg, id: \.self) { veg1 in
                        Text("\(veg1)".capitalized)
                    }.onDelete { index  in
                        deleteveg(index: index)
                    }
                    .onMove { index, newOffset in
                        moveveg(index: index, newOffset: newOffset)
                    }
                    
                }
            header:
                {
                    Text("Section 2")
                }
                
            }.accentColor(.green)
           // .listStyle(GroupedListStyle())
           // .listStyle(InsetGroupedListStyle())
            .navigationTitle("GroceryList")
            .navigationBarItems(leading: EditButton() ,
                                trailing: Button("Add", action: {
                add(fruit: "coconut")
            }))
        }
        .accentColor(.red)
    }
    func deleteveg (index:IndexSet ){
        veg.remove(atOffsets: index)
    }
    func moveveg (index: IndexSet, newOffset: Int ){
        veg.move(fromOffsets: index, toOffset: newOffset)
    }
    func addveg (fruit : String){
        veg.append(fruit)
    }
    
    func delete (index:IndexSet ){
        fruits.remove(atOffsets: index)
    }
    func move (index: IndexSet, newOffset: Int ){
        fruits.move(fromOffsets: index, toOffset: newOffset)
    }
    func add (fruit : String){
        fruits.append(fruit)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

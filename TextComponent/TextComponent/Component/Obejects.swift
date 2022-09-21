//
//  Obejects.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct FruitModel :Identifiable {
    let id :String = UUID().uuidString
    let name : String
    let count:Int
}
class FruitViewModel :ObservableObject{
    @Published  var fruitArray : [FruitModel] = []
    @Published  var isLoading : Bool = true
    init() {
        createData()
    }
    func deleteData (index:  IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    func createData () {
       let fruit1 = FruitModel(name: "Apple", count: 1)
        let fruit2 = FruitModel(name: "Apple2", count: 2)
        let fruit3 = FruitModel(name: "Apple3", count: 3)
        let fruit4 = FruitModel(name: "Apple4", count: 4)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5 ){
            self.isLoading = false
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            
        }
        
     
    }
    
}
struct Obejects: View {
//  @State var fruitArray :[FruitModel] = []
   ///@ObservedObject var fruiVM : FruitViewModel = FruitViewModel() // use for sub view
     @StateObject var fruiVM : FruitViewModel = FruitViewModel() // use on creation
    var body: some View {
        NavigationView {
            List {
               if fruiVM.isLoading
                {
                    ProgressView()
               }else{
                   ForEach(fruiVM.fruitArray){ item in
                       HStack{
                           Text(item.name)
                           Text("\(item.count)")
                       }
                       
                   }
                   .onDelete { index  in
                       fruiVM.deleteData(index: index)
                   }
               }
               
               
            }
            
            .navigationTitle("Objects")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: {
                SeconScreen(FruiyVM: fruiVM)
            }, label: {
                Image(systemName: "arrow.right")
            })
                                   )
            
        }
    }

}
struct SeconScreen : View {
    @Environment(\.presentationMode) var  presentationMode
    @ObservedObject var FruiyVM : FruitViewModel
    var body : some View{
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ForEach(FruiyVM.fruitArray) { item in
                    Text("\(item.name)")
                }
            }
        }
    }
}

struct Obejects_Previews: PreviewProvider {
  
    static var previews: some View {
         Obejects()
//        SeconScreen()
    }
}

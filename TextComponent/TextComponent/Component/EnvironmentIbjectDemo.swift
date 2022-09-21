//
//  EnvironmentIbjectDemo.swift
//  TextComponent
//
//  Created by Vipal on 17/09/22.
//

import SwiftUI

class EnvironmentViewModel:ObservableObject {
    @Published var dataArray : [String] = []
    init() {
        getDeata()
    }
    func getDeata () {

        self.dataArray.append(contentsOf: ["Iphone","Ipod","Apple Watch"])
    }
}
struct EnvironmentIbjectDemo: View {
    @StateObject var environmentViewModel : EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(environmentViewModel.dataArray, id: \.self) {  item  in
                   
                    NavigationLink {
                        //DetailesView(viewModel: environmentViewModel, selectedItem: item )
                        DetailesView(selectedItem: item )
                    } label: {
                        Text(item)
                    }

                }
                
            }.navigationTitle("Demo")
        }
        .environmentObject(environmentViewModel)
    }
}
struct DetailesView : View {
    //@ObservedObject var viewModel : EnvironmentViewModel
    let selectedItem : String
    var body : some View{
        ZStack{
          
            NavigationLink {
               // ChildDetailesView(viewModel: viewModel)
                ChildDetailesView()
            } label: {
                Text(selectedItem)
                    .font(.largeTitle)
            }
            
        }
    }
}
struct ChildDetailesView : View {
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    var body : some View{
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            VStack{
                
                ForEach(viewModel.dataArray, id: \.self) {  item  in
                    
                    Text(item)
                        .font(.largeTitle)
                }
            }
        }
    }
}
struct EnvironmentIbjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentIbjectDemo()
    }
}

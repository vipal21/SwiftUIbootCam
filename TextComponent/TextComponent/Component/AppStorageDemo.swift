//
//  AppStorageDemo.swift
//  TextComponent
//
//  Created by Vipal on 18/09/22.
//

import SwiftUI

struct AppStorageDemo: View {
   // @State var name: String?
    @AppStorage ("name") var name : String?
    var body: some View {
        VStack{
            
            Text(name ?? "AddName")
            
            if let name = name {
                Text(name)
            }
            Button("Save") {
                let newname = "Emaily"
                name = newname
               // UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            name = UserDefaults.standard.string(forKey: "name")
//        }
       
    }
}

struct AppStorageDemo_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageDemo()
    }
}

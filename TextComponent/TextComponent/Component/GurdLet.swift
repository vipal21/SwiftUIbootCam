//
//  GurdLet.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct GurdLet: View {
    @State var currentUser:String? = nil
    @State var text:String?
    @State var isLoding: Bool = true
    var body: some View {
        NavigationView {
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                if let text = text {
                    Text(text)
                }
                if isLoding {
                    ProgressView()
                }
               
            }.onAppear {
                getDataWithGuard()
            }
        }
       
    }
    func getDataWithGuard (){
            guard let currentUser = currentUser else {
                text = "user not exists"
                isLoding = false
                return
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                text = "This is the new Data with user: \(currentUser)"
                isLoding = false
            }
       
        
    }
    func getData (){
        if let currentUser = currentUser {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                text = "This is the new Data with user: \(currentUser)"
                isLoding = false
            }
        }else{
            text = "user not exists"
        }
        
    }
    
}

struct GurdLet_Previews: PreviewProvider {
    static var previews: some View {
        GurdLet()
    }
}

//
//  ProfileView.swift
//  TextComponent
//
//  Created by Vipal on 21/09/22.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName : String?
    @AppStorage("age") var currentUserAge : Double?
    @AppStorage("gender") var currentGender : String?
    @AppStorage("isSignedIn") var isSignedIn :Bool = false
    
    var body: some View {
        VStack{
           
            Text(currentUserName ?? "Your name")
            Text(currentGender ?? "Your Gender")
            Text(String(format: "%.0f",currentUserAge ?? 0.0))
            
            Button("SignOut") {
                currentUserName = nil
                currentUserAge = nil
                currentUserAge = nil
                withAnimation {
                    isSignedIn = false
                }
                
            }
        }
        .font(.headline)
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

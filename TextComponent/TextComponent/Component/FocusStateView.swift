//
//  FocusStateView.swift
//  TextComponent
//
//  Created by Vipal on 21/09/22.
//

import SwiftUI

struct FocusStateView: View {
    enum OnboardingFiled  : Hashable{
        case username
        case password
    }
    @State var txtTextFiled : String = ""
    //@FocusState var isFocused : Bool
    
    @State var txtTextFiledPassWord : String = ""
  //  @FocusState var isFocusedPassWord : Bool
    
    @FocusState var isInFocus: OnboardingFiled?
    
    var body: some View {
        VStack(spacing  : 40) {
         
            TextField("UserName", text: $txtTextFiled)
               // .focused($isFocused)
                .focused($isInFocus, equals: .username)
                .padding(20)
                .background(Color.gray.cornerRadius(20))
                .foregroundColor(.white)
            SecureField("Password", text: $txtTextFiledPassWord)
                //.focused($isFocusedPassWord)
                .focused($isInFocus, equals: .password)
                .padding(20)
                .background(Color.gray.cornerRadius(20))
                .foregroundColor(.white)
            
            Button("ToggleState") {
                let usernameIsValid  = !txtTextFiled.isEmpty
                let upassWordIsValid = !txtTextFiledPassWord.isEmpty
                if(usernameIsValid && upassWordIsValid) {
                    //signup
                }else if usernameIsValid {
                    isInFocus = .password
                    //isFocused = false
                   // isFocusedPassWord = true
                }else{
                    isInFocus = .username
                    //isFocused = true
                    //isFocusedPassWord = false
                }
            }


        }
        .padding(30)
            //.textFieldStyle(.roundedBorder)
    }
}

struct FocusStateView_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateView()
    }
}

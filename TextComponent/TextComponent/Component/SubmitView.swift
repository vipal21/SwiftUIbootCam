//
//  SubmitView.swift
//  TextComponent
//
//  Created by Vipal on 21/09/22.
//

import SwiftUI
//static var `continue`: SubmitLabel
//Defines a submit label with text of “Continue”.
//static var done: SubmitLabel
//Defines a submit label with text of “Done”.
//static var go: SubmitLabel
//Defines a submit label with text of “Go”.
//static var join: SubmitLabel
//Defines a submit label with text of “Join”.
//static var next: SubmitLabel
//Defines a submit label with text of “Next”.
//static var `return`: SubmitLabel
//Defines a submit label with text of “Return”.
//static var route: SubmitLabel
//Defines a submit label with text of “Route”.
//static var search: SubmitLabel
//Defines a submit label with text of “Search”.
//static var send: SubmitLabel

struct SubmitView: View {
    @State var txtTextFiled : String = ""
    var body: some View {
                    VStack {
                        TextField("UserName", text: $txtTextFiled)
                         .padding(20)
                         .background(Color.gray.cornerRadius(20))
                         .foregroundColor(.white)
//                         .submitLabel(.done)
                         .submitLabel(.continue)
                         .onSubmit {
                             //Perfoorm Action
                         }
                    }
           }
}

struct SubmitView_Previews: PreviewProvider {
    static var previews: some View {
        SubmitView()
    }
}

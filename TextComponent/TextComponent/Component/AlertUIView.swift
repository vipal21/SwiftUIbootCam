//
//  AlertUIView.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct AlertUIView: View {
    @State var isPresented :Bool = false
    @State var background:Color = .yellow
    @State var title:String = ""
    @State var message:String = ""
    @State var alertType:MyAlert? = nil
    
    enum MyAlert {
        case sucess
        case fail
    }
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea()
                Button("ShowAlert"){
                    message = "My message"
                    title = "Titlte"
                    alertType = .sucess
                    isPresented.toggle()
                    
                }
                .alert(isPresented: $isPresented ,content:
                        {
                            // Alert(title: Text("Error"))
                    getAlertWithEnume()
                                })
            }
    }
    func getAlertWithEnume () -> Alert {
        switch alertType {
        case .sucess:
            return Alert(title: Text ("Sucess"))
        case .fail:
            return Alert(title:  Text ("Fail"))
 
        default: return Alert(title:  Text ("Error"))
            
        }
    }
    func getCustomAlert () -> Alert {
        Alert(title: Text(title),
          message: Text (message),
              primaryButton:
                .destructive(Text("Delete"),action: {
                    self.background = .red
                }) ,
              secondaryButton:
                .cancel(Text("Cancle"),action: {
                    self.background = .green
                }))
    }
    func getAlert () -> Alert {
        Alert(title: Text("AlertTitle"),
          message: Text ("Messahe"),
              primaryButton:
                .destructive(Text("Delete"),action: {
                    self.background = .red
                }) ,
              secondaryButton:
                .cancel(Text("Cancle"),action: {
                    self.background = .green
                }))
    }
}

struct AlertUIView_Previews: PreviewProvider {
    static var previews: some View {
        AlertUIView()
    }
}

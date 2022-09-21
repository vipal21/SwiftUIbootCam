//
//  ActionSheetView.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct ActionSheetDemoView: View {
   @State var isPresented:Bool = false
    @State var actionSheetOptions:ActionSheetOptions = .user
    enum ActionSheetOptions {
        case user
        case other
    }
    var body: some View {
        VStack{
            HStack{
                Circle()
                    .fill(.primary)
                    .frame(width: 40,height: 40)
                Text("UserName")
                Spacer()
                Button {
                    actionSheetOptions = .other
                    isPresented.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }

            }
            .padding(.horizontal)
            .actionSheet(isPresented: $isPresented) {
                //showActionSheet()
               // showActionSheet2()
                showActionSheetwithEnum()
            }
            Rectangle()
                .frame(height: 400)
        }
//        Button("Cutton") {
//            isPresented.toggle()
//        }
//        .actionSheet(isPresented: $isPresented) {
//            //showActionSheet()
//            showActionSheet2()
//        }
    }
    func showActionSheet() -> ActionSheet{
       return ActionSheet(title: Text("title"),message: Text("Message"))
    }
    func showActionSheet2() -> ActionSheet{
        let button : ActionSheet.Button = .default(Text("Default"))
        let button2 : ActionSheet.Button = .destructive(Text("Destructive"))
        let button3 : ActionSheet.Button = .cancel(Text("Cancel"))
        
        return  ActionSheet(title: Text("title"),
                   message: Text("Message"),
                   buttons: [button,button2,button3])
                   
    }
    func showActionSheetwithEnum() -> ActionSheet{
        let share : ActionSheet.Button = .default(Text("Share"))
        let delete : ActionSheet.Button = .destructive(Text("Delete"))
        let cancel : ActionSheet.Button = .cancel(Text("Cancel"))
        switch actionSheetOptions
        {
                case.user:
                    return  ActionSheet(title: Text("title"),
                                        message: Text("Message"),
                                        buttons: [share,delete,cancel])
                case.other:
                    return  ActionSheet(title: Text("title"),
                                        message: Text("Message"),
                                        buttons: [share,cancel])
        }
        
       
                   
    }
}

struct ActionSheetDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetDemoView()
    }
}

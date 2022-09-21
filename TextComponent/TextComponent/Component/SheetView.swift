//
//  SheetView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct SheetView: View {
    @State var isShowSheet : Bool = false
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button("Button") {
                isShowSheet = true
            }.sheet(isPresented: $isShowSheet) {//fullScreenCover(isPresented: $isShowSheet)
                Sheet2View()
            }
        }
    }
}
struct Sheet2View: View {
  
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack (alignment :.topLeading) {
            Color.red.ignoresSafeArea()
            
            Button("Close") {
                
                presentationMode.wrappedValue.dismiss()
            }.foregroundColor(.white)
        }
    
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
//        Sheet2View()
    }
}

//
//  AppearDissappear.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct AppearDissappear: View {
    @State var text = "Start"
    @State var count: Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
//                Text(text)
                LazyVStack {
                    ForEach(0..<50) { _  in
                        RoundedRectangle(cornerRadius:20.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }.onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
//                    text = "Appear"
//                }
                
            }
            .onDisappear(perform: {
                text = "EndAppear"
            })
            .navigationTitle("Appear :\(count)")
        }
    }
}

struct AppearDissappear_Previews: PreviewProvider {
    static var previews: some View {
        AppearDissappear()
    }
}

//
//  TabViewDemo.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct TabViewDemo: View {
    @State var selection : Int = 0
    var body: some View {
        TabView (selection: $selection){
            HomeView(selection: $selection)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)
            Text("BrowseTab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            Text("ProfileTab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }.tag(2)
    

        }
    }
}

struct TabViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
    }
}

struct HomeView: View {
    @Binding var selection: Int
    var body: some View {
        ZStack{
            Color.red
                .edgesIgnoringSafeArea(.top)
            VStack{
                Text("HomeTab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button {
                    selection = 2
                } label: {
                    Text ("GoToProfile")
                        .font(.title2)
                        .padding(20)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(20)
                        
                    
                }
            }
            

        }
        
       
    }
}

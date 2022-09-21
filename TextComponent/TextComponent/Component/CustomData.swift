//
//  CustomData.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct CustomData: View {
    let data:[String] = ["1","2","3","4","5"]
    let users: [User] = [
        User(firstname: "john", lastname: "deo"),
        User(firstname: "rahul", lastname: "patel"),
    ]
    var body: some View {
        VStack{
            List {
                ForEach(users, id: \.self) { user in
                    HStack(spacing: 10) {
                        Circle().frame(width: 20,height: 20)
                        Text(user.firstname.capitalized  + " " + user.lastname)
                    }
                }
            }
        }
    }
}
struct User : Hashable {
    var firstname :String
    var lastname :String
}
struct CustomData_Previews: PreviewProvider {
    static var previews: some View {
        CustomData()
    }
}

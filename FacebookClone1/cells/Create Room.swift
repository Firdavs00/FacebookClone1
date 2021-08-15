//
//  Create Room.swift
//  FacebookClone1
//
//  Created by MacBook Pro on 15/08/21.
//

import SwiftUI

struct Create_Room: View {
    var body: some View {
        HStack{
            Image("ic_room").resizable().scaledToFit()
                .frame(width: 100, height: 30)
                .cornerRadius(2).padding(.leading,-40)
            VStack{
                Text("Create").font(.system(size: 15)).foregroundColor(.blue)
                    .fontWeight(.bold)
                Text("Room").font(.system(size: 15)).foregroundColor(.blue)
                    .fontWeight(.bold)
            }.padding(.leading, -20)
        }.padding().frame(width: 150, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).overlay(RoundedRectangle(cornerRadius: 80).stroke(Color.blue, lineWidth: 1))

    }
}

struct Create_Room_Previews: PreviewProvider {
    static var previews: some View {
        Create_Room()
    }
}

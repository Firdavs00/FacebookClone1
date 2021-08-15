//
//  StoryItem.swift
//  FacebookClone1
//
//  Created by MacBook Pro on 15/08/21.
//

import SwiftUI

struct StoryItem: View {
    var story_img = "ic_4"
    var pro_img = "profile"
    var firstname = "Boltayev"
    var lastname = "Firdavs_7777"
    var body: some View {
        ZStack{
            Image(story_img).resizable().frame(width: 150, height: 250)
                .cornerRadius(15)
            VStack(alignment: .leading){
            Image(pro_img).resizable().frame(width: 50, height: 50)
                .cornerRadius(25)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.blue, lineWidth: 5))
                Spacer()
            Text(firstname).fontWeight(.bold)
                .font(.system(size: 17)).foregroundColor(.white)
            Text(lastname).fontWeight(.bold)
                .font(.system(size: 17)).foregroundColor(.white)
            }
        }.frame(width: 150, height: 250)
        .cornerRadius(15)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}

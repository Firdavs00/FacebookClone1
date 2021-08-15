//
//  RoomItems.swift
//  FacebookClone1
//
//  Created by MacBook Pro on 15/08/21.
//

import SwiftUI

struct RoomItems: View {
    var isOnline = false
    var img_url = "profile"
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image(img_url).resizable().frame(width: 60, height: 60)
                .cornerRadius(30)
            if isOnline{
                ZStack{
                    Circle().fill(Color.white).frame(width: 25, height: 25)
                    Circle().fill(Color.green).frame(width: 18, height: 18)
                }
                
            }
           
            
        }
      
    }
}

struct RoomItems_Previews: PreviewProvider {
    static var previews: some View {
        RoomItems()
    }
}

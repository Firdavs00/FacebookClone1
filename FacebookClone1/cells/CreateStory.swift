//
//  CreateStory.swift
//  FacebookClone1
//
//  Created by MacBook Pro on 15/08/21.
//

import SwiftUI

struct CreateStory: View {
    var body: some View {
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 150, height: 250)
                .foregroundColor(.gray.opacity(0.06))
            ZStack(alignment:.bottom){
                Image("profile").resizable().frame(width: 150, height: 165)
                .scaledToFit()
                .cornerRadius(15)  // 19 va 20 qatorlar bir xil vazifani bajaradi
//              .clipShape(RoundedRectangle(cornerRadius: 15))
                VStack(spacing: 0){
                    Image("ic_plus").resizable().scaledToFit().frame(width: 50, height: 50).cornerRadius(40)
                    Group{
                        Text("Create a").fontWeight(.bold)
                    Text("Story").fontWeight(.bold)
                    }.font(.system(size: 18)).foregroundColor(.black)
                }.offset(x: 0, y: 66)
            }
        }.overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.3), lineWidth: 1))
    }
}

struct CreateStory_Previews: PreviewProvider {
    static var previews: some View {
        CreateStory()
    }
}

//
//  PostItems.swift
//  FacebookClone1
//
//  Created by MacBook Pro on 15/08/21.
//

import SwiftUI

struct PostItems: View {
    var post_item = "post_img"
    var body: some View {
        VStack{
//            Header
            HStack{
                ZStack(alignment: .bottomTrailing){
                    Image("profile").resizable().frame(width: 50, height: 50)
                        .cornerRadius(25)
                    Circle().fill(Color.white).frame(width: 22, height: 22)
                    Circle().fill(Color.green).frame(width: 18, height: 18)
                }
               
                VStack(alignment: .leading, spacing: 5){
                    Text("Firdavs Boltayev").fontWeight(.bold)
                    HStack{
                        Text("29m")
                        Image("public").resizable().frame(width: 20, height: 20)
                    }
                }
                Spacer()
                Image("ic_more")

            }.padding(.leading,10).padding(.trailing, 10).padding(.top, 10).padding(.bottom, 10)
//           Image
            Image(post_item).resizable().scaledToFit()
            
//          like, love , counts for comment and share
            HStack{
                HStack(spacing: -7){
                Image("ic_fc_like").resizable().frame(width: 25, height: 25)
                Image("ic_love").resizable().frame(width: 30, height: 30)
                    .cornerRadius(30)
                }
                Text("5.6K")
                Spacer()
                Text("580 Comments")
                Text("40 Shares")
            }.padding(.leading,10).padding(.trailing, 10).padding(.top, 10).padding(.bottom, 10)
            HStack{
                
            }.frame(height: 0.5).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5)).padding(.top, 5)
            
            HStack{
                Spacer()
                HStack{
                    Image("like").resizable().frame(width: 25, height: 25)
                    Text("Like")
                }
                Spacer()
                HStack{
                    Image("comment").resizable().frame(width: 23, height: 23)
                    Text("Comment")
                }
                Spacer()
                HStack{
                    Image("share").resizable().frame(width: 25, height: 25)
                    Text("Share")
                }
                Spacer()
//  Agar bu Hstakga .frame(height: 40) ni bermasak pastdagi va yuqoridagi chiziqlardan teng uzoqlikda bo'lmaydi!!!
            }.frame(height: 40).padding(.top, 5)
        
            HStack{
            }.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
        }
    }
}

struct PostItems_Previews: PreviewProvider {
    static var previews: some View {
        PostItems()
    }
}

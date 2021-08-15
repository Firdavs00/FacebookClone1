//
//  ProfileItem.swift
//  FacebookClone1
//
//  Created by MacBook Pro on 15/08/21.
//

import SwiftUI

struct ProfileItem: View {
    var profileNew_img = "ic_1"
    var body: some View {
        VStack{
        HStack{
            Image(profileNew_img).resizable().frame(width: 50, height: 50)
                .cornerRadius(25)
        
            VStack(alignment: .leading){
                HStack{
                    Text("Feruz Boltayev").fontWeight(.bold)
                    Text("updated his profile")
                }.padding(.top)
                Text("picture")
                HStack{
                Text("1d")
                Image("public").resizable().frame(width: 20, height: 20)
                }
            }
            
            Spacer()
            Image("ic_more")
        }.padding(.leading,10).padding(.trailing, 10).padding(.top, 10).padding(.bottom,10)
    
            Image(profileNew_img).resizable().scaledToFit()
            .clipShape(Circle())
            HStack(){
            Image("ic_fc_like").resizable().scaledToFit().frame(width: 25, height: 25)
            Text("9")
                Spacer()
            Text("")
            }.padding(.leading, 10).padding(.bottom,10)
            
            HStack{
            }.frame(height:0.5).frame(maxWidth: .infinity).background(Color.gray.opacity(0.5))
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

struct ProfileItem_Previews: PreviewProvider {
    static var previews: some View {
        ProfileItem()
    }
}

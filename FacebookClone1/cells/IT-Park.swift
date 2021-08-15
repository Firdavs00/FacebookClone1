//
//  IT-Park.swift
//  FacebookClone1
//
//  Created by MacBook Pro on 15/08/21.
//

import SwiftUI

struct IT_Park: View {
    var body: some View {
        VStack{
            HStack{
                Image("ITimg").resizable().scaledToFit().frame(width: 50, height: 50).cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray.opacity(0.3), lineWidth: 1))
                VStack(spacing: 0){
                    Text("IT-Park").fontWeight(.bold)
                    HStack{
                    Text("1d")
                    Image("public").resizable().frame(width: 20, height: 20)
                    }
                }
                Spacer()
                Image("ic_more")
            }.padding(.leading, 10).padding(.trailing, 10).padding(.top, 10).padding(.bottom, 10)
            HStack{
        
                Text("⁉️").font(.system(size: 23))
                Text("IT sohasida frilansermisiz?").font(.system(size: 20))
                Spacer()
                Text("")
            }.padding(.leading,10).frame(height: 40)
            HStack{
        
                Text("Unda oxiri...").font(.system(size: 23))
                Text("See More").font(.system(size: 20)).foregroundColor(.gray)
                Spacer()
                Text("")
            }.padding(.leading,10).frame(height: 40)
            HStack{
                Image("itpost").resizable().scaledToFit()
                Image("itpost").resizable().scaledToFit()
            }
            HStack{
            Image("ic_fc_like").resizable().scaledToFit().frame(width: 25, height: 25)
            Text("4")
            Spacer()
            Text("1 Share")
            }.padding(.leading, 10).padding(.trailing, 10).padding(.top, 10).padding(.bottom, 10)
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

struct IT_Park_Previews: PreviewProvider {
    static var previews: some View {
        IT_Park()
    }
}

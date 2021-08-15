//
//  ContentView.swift
//  FacebookClone1
//
//  Created by MacBook Pro on 15/08/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
         
               ScrollView{
                
//              live foto room
                
                VStack{
                    HStack{
                    Image("profile").resizable().frame(width: 60, height: 60)
                        .cornerRadius(30)
                        Text("What's on your mind?").font(.system(size: 17))
                            .frame(height:40).frame(maxWidth: .infinity)
                            .offset(x: -65, y: 0)
                            .overlay(RoundedRectangle(cornerRadius: 45).stroke(Color.gray.opacity(0.5), lineWidth: 1))

                    }.frame(height: 90)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.leading, 10).padding(.trailing, 10)
                    HStack{
                    }.frame(height: 1).frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3))
                    HStack{
                        Group{
                        Spacer()
                        HStack{
                            Image("live").resizable().scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Live")
                        }
                        Spacer()
                        VStack{
                        }.frame(width: 1, height: 30).background(Color.gray.opacity(0.3))
                        Spacer()
                        HStack{
                            Image("photo").resizable().scaledToFit()
                                .frame(width: 23, height: 23)
                            Text("Photo")
                        }
                        Spacer()
                        VStack{
                        }.frame(width: 1, height: 30).background(Color.gray.opacity(0.3))
                        Spacer()
                        HStack{
                            Image("ic_room").resizable().scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("Room")
                        }
                        }
                        Spacer()
                    }.frame(height: 50)
                    }
                
//                Create Room
                
                VStack{
                    HStack{
                    }.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                            Create_Room()
                            RoomItems(isOnline: true, img_url: "profile")
                            RoomItems(isOnline: false, img_url: "personImage1")
                            RoomItems(isOnline: true, img_url: "personImage2")
                            RoomItems(isOnline: false, img_url: "images-1")
                            RoomItems(isOnline: true, img_url: "man")
                          
                                
                            }.padding(.leading, 10)
                        }
                    }.frame(height: 100).frame(maxWidth: .infinity)
                    
                    
                }
                
//                Create Story
                
                VStack{
                    HStack{
                    }.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
            HStack{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
            CreateStory()
StoryItem(story_img: "ic_4", pro_img: "profile", firstname: "Boltayev", lastname: "Firdavs_7777")
StoryItem(story_img: "ic_1", pro_img: "images-1", firstname: "Stepanovna", lastname: "Luiza")
StoryItem(story_img: "ic_2", pro_img: "personImage2", firstname: "Aleksandrov", lastname: "Yura")
                                                
                              
                            }
                        }
                    }.padding(.leading,10).padding(.trailing,10).padding(.top,10).padding(.bottom,10)
                }
                
//                Post Item
                
                VStack{
                    HStack{
                    }.frame(height: 10).frame(maxWidth: .infinity).background(Color.gray.opacity(0.3))
                   
                    PostItems(post_item: "post_img")
                    PostItems(post_item: "ic_3")
                   
                    
                }
                
//                Profile item
                VStack{
//                    ProfileItem(profileNew_img: "post_img")
                    ProfileItem(profileNew_img: "ic_1")
                }
                
//                IT - Park
                
                VStack{
                    IT_Park()
                }
                }
                
            .navigationBarItems(
                leading: Text("facebook")
                    .font(.system(size: 25)).foregroundColor(.blue)
                    .fontWeight(.bold),
                trailing:
                    HStack{
                        ZStack{
                            Circle()
                                .fill(Color.gray.opacity(0.3))
                                .frame(width: 36, height: 36)
                    Image("ic_search")
                       
                        }
                        ZStack{
                            Circle()
                                .fill(Color.gray.opacity(0.3))
                                .frame(width: 36, height: 36)
                            Image("images").resizable().frame(width: 25, height: 25)
                                .cornerRadius(50)
                        }
                    })
                .navigationBarTitle(Text(""),displayMode: .inline)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

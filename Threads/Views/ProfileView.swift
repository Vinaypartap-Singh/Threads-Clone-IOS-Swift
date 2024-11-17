//
//  ProfileView.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI
import SlidingTabView

struct ProfileView: View {
    
    
    @State var selectedIndex = 0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "globe").imageScale(.large)
                
                Spacer()
                
                Image(systemName: "line.3.horizontal")
            }.padding(.horizontal)
            
            ScrollView {
                VStack (alignment: .leading) {
                    ProfileView
                    FollowerView
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Text("Edit Profile").font(.callout)
                        }.frame(maxWidth: .infinity)
                            .frame(height: 40).background(.black).foregroundColor(.white).clipShape(RoundedRectangle(cornerRadius: 12))
                        
                        Button {
                            
                        } label: {
                            Text("Share Profile").font(.callout)
                        }.frame(maxWidth: .infinity)
                            .frame(height: 40).background(.white).foregroundColor(.black).overlay(RoundedRectangle(cornerRadius: 12).stroke(.gray.opacity(0.2)))
                    }
                    
                    // Sliding Tab View
                    
                    VStack {
                        SlidingTabView(selection: $selectedIndex, tabs: ["Threads", "Replies"]).foregroundColor(.black).accentColor(.black)
                        
                        if selectedIndex == 0 {
                            ForEach (1 ..< 10) { item in
                                FeedView()
                            }
                        }
                        
                        if selectedIndex == 1 {
                            Text("No Replies Yet")
                        }
                    }
                    
                  
                    
                    
                }
            }.padding()
        }
    }
    
    
    var ProfileView: some View {
        HStack (alignment: .top, spacing: 20) {
            VStack (alignment: .leading, spacing: 10) {
                Text("John Michel").font(.title).fontWeight(.bold)
                
                Text("john_michel222").font(.callout)
                
                Text("Passionate about art, photography, development and problem solving.")
            }
            
            Image("user").resizable().frame(width: 64, height: 64).clipShape(.circle)
        }
    }
    
    
    var FollowerView: some View {
        HStack {
            ForEach ( 0..<3 ) { img in
                Image("user").resizable().frame(width: 20, height: 20).clipShape(.circle).overlay(Circle().stroke(Color.white)).padding(.leading, -15)
            }
            Text("12 Followers").foregroundColor(.gray)
        }.padding()
    }
    
}



#Preview {
    ProfileView()
}

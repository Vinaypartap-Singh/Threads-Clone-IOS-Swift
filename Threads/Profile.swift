//
//  Profile.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        @State var name: String = "";
        @State var userName: String = "";
        @State var img:String = "";
        @State var bio:String = "";
        @State var link:String = "";
        
        
        
        VStack (spacing: 10) {
            HStack {
                Image(systemName: "arrow.left")
                Text("Back").font(.system(size: 16))
                Spacer()
                Text("Skip").font(.system(size: 16))
                Image(systemName: "arrow.right")

            }.padding()
            
            Text("Profile").font(.system(size: 26, weight: .bold)).padding(.top)
            Text("Customize Your Threads Profile").font(.system(size: 12)).opacity(0.6)
            
            Spacer()
            
            VStack (alignment: .leading, spacing: 10)  {
                
                HStack {
                    VStack (alignment: .leading) {
                        Text("Name").font(.system(size: 14))
                        TextField("Full Name", text: $name)
                        Divider()
                    }
                    
                    AsyncImage(url: URL(string: img)) {
                        image in image.resizable().scaledToFit().frame(width: 50).clipShape(Circle())
                    } placeholder: {
                        Image(systemName: "person.badge.plus")
                            .padding()
                            .background(.gray.opacity(0.2))
                            .clipShape(Circle())
                    }
                }
                    Text("User Name").font(.system(size: 14))
                    TextField("@username", text: $name)
                    Divider()
                    
                    Text("Bio").font(.system(size: 14))
                    TextField("bio", text: $name)
                    Divider()
                    
                    Text("Link").font(.system(size: 14))
                    TextField("Link", text: $name)
                    Divider()
            }.padding()
                .frame(maxWidth: .infinity)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black.opacity(0.3))).padding(.horizontal)
            
            
            Button {
                
            } label: {
                Text("Import From Google").font(.system(size: 16))
            }.frame(maxWidth: .infinity).frame(height: 50).background(.black).clipShape(RoundedRectangle(cornerRadius: 20)).foregroundColor(.white).padding()
            
            Spacer()
        }
    }
}

#Preview {
    Profile()
}

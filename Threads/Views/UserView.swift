//
//  UserView.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        HStack (alignment: .top, spacing: 10) {
            Image ("user").resizable().scaledToFit().frame(width: 40, height: 40).clipShape(Circle())
            
            VStack (alignment: .leading) {
                HStack {
                    Text("jones177_jacob").font(.headline)
                    Image("verified").resizable().scaledToFit().frame(width: 16)
                    
                    Spacer()
                }
                
                Text("Jacob Jones").font(.callout)
            }
            
            Button {
                
            } label: {
                Text("Follow").font(.callout)
            }.foregroundColor(.black).padding(8).padding(.horizontal, 20)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke( Color.gray.opacity(0.5)))
        }.padding(.horizontal)
    }
}

#Preview {
    UserView()
}

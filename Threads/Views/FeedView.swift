//
//  FeedView.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        HStack (alignment: .top) {
            VStack {
                Image("user").resizable().scaledToFit().frame(width: 36).clipShape(Circle())
                Rectangle().frame(width: 1, height: .infinity).opacity(0.3)
            }
            
            VStack (alignment: .leading, spacing: 15) {
                HStack {
                    Text("Vinay Sandhu").font(.headline)
                    Image("verified").resizable().scaledToFit().frame(width: 16)
                    Spacer()
                    
                    Text("33m").font(.caption).foregroundColor(Color.gray)
                    Image(systemName: "ellipsis").foregroundColor(Color.gray)
                }
                
                // Content
                
                Text("Let's Talk about the incredible power of preserving our history and how it can change your life").font(.callout)
                
                HStack (spacing: 20) {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "message")
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "return")
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane")
                    }
                }.foregroundColor(.black)
                
            }
        }.padding()
    }
}

#Preview {
    FeedView()
}

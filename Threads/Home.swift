//
//  Home.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            // Header
            Header
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(1 ..< 10) {_ in 
                        FeedView()
                    }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    
    var Header: some View {
        HStack {
            Image("logo").resizable().scaledToFit().frame(width: 20).padding()
        }.frame(maxWidth: .infinity)
    }
}

#Preview {
    ContentView()
}

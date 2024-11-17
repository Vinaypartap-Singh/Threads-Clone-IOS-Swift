//
//  Search.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI

struct Search: View {
    
    
    @State var searchText: String = ""
    
    
    var body: some View {
        NavigationView {
            VStack (spacing: 10) {
                Text("").navigationTitle("Search")
                
                HStack (spacing: 20) {
                    Image(systemName: "magnifyingglass")
                    TextField("Search", text: $searchText)
                }.padding(12).background(.gray.opacity(0.15)).clipShape(RoundedRectangle(cornerRadius: 10)).padding(.horizontal)
                
                ScrollView (showsIndicators: false) {
                    VStack (spacing: 30) {
                        ForEach( 1..<10 ) { _ in
                            UserView()
                        }
                    }
                }.padding(.top, 30)
            }
        }
    }
}

#Preview {
    Search()
}

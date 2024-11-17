//
//  ContentView.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            Home().tabItem {
                Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                    .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
            }.tag(0)
            
            Search().tabItem {
                Image(systemName: "magnifyingglass")
            }.tag(1)
            
            Text("New Thread").tabItem {
                Image(systemName: selectedTab == 2 ? "plus" : "plus")
                    .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
            }.tag(2)
            
            ActivityView().tabItem {
                Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                    .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
            }.tag(3)
            
            ProfileView().tabItem {
                Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                    .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
            }.tag(4)
        }.accentColor(.black)
    }
}

#Preview {
    ContentView()
}

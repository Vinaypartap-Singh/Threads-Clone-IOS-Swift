//
//  ActivityView.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        NavigationView {
            VStack (spacing: 10) {
                Text("").navigationTitle("Your Activity")
                
                ScrollView (showsIndicators: false) {
                    VStack (spacing: 30) {
                        ForEach( 1..<10 ) { _ in
                            UserView()
                        }
                    }
                }
            }
        }

    }
}

#Preview {
    ActivityView()
}

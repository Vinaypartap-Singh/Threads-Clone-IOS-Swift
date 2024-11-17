//
//  Splash.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI

struct Splash: View {
    
    @State var isActive = false

    var body: some View {
        
        
        if isActive {
            Login()
        } else {
            
            VStack {
                Image ("loadingLogo").resizable().scaledToFit().frame(width: 60)
            }.onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation(.easeIn(duration: 1.0)) {
                        isActive.toggle()
                    }
                }
            }
        }
        

    }
}

#Preview {
    Splash()
}

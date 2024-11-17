//
//  Login.swift
//  Threads
//
//  Created by Vinay Sandhu on 2024-11-16.
//

import SwiftUI

struct Login: View {
    var body: some View {
        VStack {
            Image("threadsBG").edgesIgnoringSafeArea(.top)
            
            Spacer()
            
            Button  {
                // TODO
            } label: {
                HStack {
                    Text("Continue With Google").font(.system(size: 16))
                    Spacer()
                    Image("google").resizable().scaledToFit().frame(width: 30)
                }
            }.foregroundColor(.black).padding(.horizontal, 20).frame(maxWidth: .infinity).frame(height: 60).background(.white).clipShape(Capsule()).padding().shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 4)
            
        }
    }
}

#Preview {
    Login()
}

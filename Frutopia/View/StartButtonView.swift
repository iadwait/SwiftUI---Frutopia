//
//  StartButtonView.swift
//  Frutopia
//
//  Created by Adwait Barkale on 28/10/24.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack {
                Text("Start")
                    .font(.system(size: 25, weight: .semibold, design: .default))
                
                Image(systemName: "arrow.right.circle")
                    .font(.system(size: 25, weight: .semibold, design: .default))
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
            //.background(.red)
        })
        .accentColor(.white)
    }
}

// MARK: - PREVIEW
#Preview {
    StartButtonView()
}

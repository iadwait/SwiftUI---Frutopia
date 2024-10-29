//
//  OnboardingView.swift
//  Frutopia
//
//  Created by Adwait Barkale on 28/10/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruitsData[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
//            ForEach(0..<fruitsData.count) { fruitIndex in
//                FruitCardView(fruit: fruitsData[fruitIndex])
//            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView()
}

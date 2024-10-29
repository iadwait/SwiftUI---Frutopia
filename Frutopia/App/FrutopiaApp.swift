//
//  FrutopiaApp.swift
//  Frutopia
//
//  Created by Adwait Barkale on 28/10/24.
//

import SwiftUI

@main // SwuitUI will require main file to execute / Entry file
struct FrutopiaApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView(fruitsData: fruitsData)
            }
        }
    }
}

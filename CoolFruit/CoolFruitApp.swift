//
//  CoolFruitApp.swift
//  CoolFruit
//
//  Created by Alexander Bowser on 12/25/21.
//

import SwiftUI

@main
struct CoolFruitApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

//
//  Food_Recipe_AppApp.swift
//  Food Recipe App
//
//  Created by Sunny Shehzad on 02/04/22.
//

import SwiftUI

@main
struct Food_Recipe_AppApp: App {
    
    @StateObject var recipesViewModel = RecipiesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}

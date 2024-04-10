//
//  VeryCreativeApp.swift
//  VeryCreative
//
//  Created by KEPLEY, MATTHEW O. on 4/10/24.
//

import SwiftUI
import SwiftData

@main
struct VeryCreativeApp: App {
    let modelContainer: ModelContainer
        
        init() {
            do {
                modelContainer = try ModelContainer(for: Recipe.self)
            } catch {
                fatalError("Could not initialize ModelContainer")
            }
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: Recipe.self)
    }
}

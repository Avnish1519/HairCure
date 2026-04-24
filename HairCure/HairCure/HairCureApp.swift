//
//  HairCureApp.swift
//  HairCure
//
//  Created by Avnish Singh on 4/15/26.
//

import SwiftUI

@main
struct HairCureApp: App {
    @State private var store = AppDataStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(store)
                .environment(store.hairInsightsStore)
                .environment(store.dietMateStore)
                .environment(store.mindEaseStore)
                .preferredColorScheme(.light)
        }
    }
}

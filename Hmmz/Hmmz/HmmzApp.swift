
//
//  HmmzApp.swift
//  Hmmz
//
//  Created by Sahora on 24/12/2023.
//

import SwiftUI
import SwiftData

@main
struct HmmzApp: App {
    @StateObject var entryController = EntryController();
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            Drafts.self,
            CountIntervals.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            Home()
                .environmentObject(entryController)
                
        }
        .modelContainer(sharedModelContainer)
        
    }
}

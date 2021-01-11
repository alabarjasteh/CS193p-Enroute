//
//  EnrouteApp.swift
//  Enroute
//
//  Created by Amirala on 10/22/1399 AP.
//

import SwiftUI

@main
struct EnrouteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

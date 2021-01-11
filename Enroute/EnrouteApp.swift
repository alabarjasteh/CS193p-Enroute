//
//  EnrouteApp.swift
//  Enroute
//
//  Created by Amirala on 10/22/1399 AP.
//

import SwiftUI

@main
struct EnrouteApp: App {
    let persistenceController: PersistenceController
    let airport: Airport
    
    init() {
        persistenceController = PersistenceController.shared
        let context = persistenceController.container.viewContext
        airport = Airport.withICAO("KSFO", context: context)
        airport.fetchIncomingFlights()
    }

    var body: some Scene {
        WindowGroup {
            FlightsEnrouteView(flightSearch: FlightSearch(destination: airport))
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

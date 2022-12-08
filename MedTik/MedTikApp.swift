//
//  MedTikApp.swift
//  MedTik
//
//  Created by Amaal Almutairi on 13/05/1444 AH.
//

import SwiftUI

@main
struct MedTikApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            add_medicine()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

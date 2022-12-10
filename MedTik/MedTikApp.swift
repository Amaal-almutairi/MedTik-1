//
//  MedTikApp.swift
//  MedTik
//
//  Created by Amaal Almutairi on 13/05/1444 AH.
//

import SwiftUI

@main
struct MedTikApp: App {
    @StateObject var vmYourMedication:YourMedicationListVM = YourMedicationListVM()
   // let persistenceController = PersistenceController.shared
   
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                add_medicine()
                   
            }
            .environmentObject(vmYourMedication)
               // .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
    
}

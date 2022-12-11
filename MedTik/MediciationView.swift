//
//  MediciationView.swift
//  MedTik
//
//  Created by Amaal Almutairi on 16/05/1444 AH.
//

import SwiftUI

struct MediciationView: View {

    @EnvironmentObject var vmYourMedication:YourMedicationListVM
    
//    @State  var MedicineList: [ListMediciations] = [
//        ListMediciations(image: "photo.circle", name: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", WarningLabel: "before lanch", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:"2:0 PM"), ListMediciations(image: "photo.circle", name: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", WarningLabel: "before lanch", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:"2:0 PM")
//
//    ]
    
    var body: some View {
        NavigationView {
           
                List{
                 UpCommingCustomCell()
                   
                        
                        ForEach(vmYourMedication.MedicineList) { medicine in
                            ListViewMedicationLCell(Medicine: medicine)
                            
                        }
                        .onDelete(perform:vmYourMedication.deltetMedication)
                        .onMove(perform: vmYourMedication.MoveMediciation)
                    }
                    
                }.listStyle(.plain)
                
            }
       //}
    
        
            
        }
  
      
        
  


struct MediciationView_Previews: PreviewProvider {
    static var previews: some View {
        MediciationView()
            .environmentObject(YourMedicationListVM())
            
    }
        
    
}

//
//  ViewModelYourMediciationList.swift
//  MedTik
//
//  Created by Amaal Almutairi on 16/05/1444 AH.
//

import Foundation
class YourMedicationListVM:ObservableObject{
    
    @Published var MedicineList:[ListMediciations] = []
    
    init(){
        getAllMediciation()
    }
    
    func getAllMediciation(){
        let newMedicine =  [ListMediciations(image: "photo.circle", name: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", WarningLabel: "before lanch", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:"2:0 PM"), ListMediciations(image: "photo.circle", name: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", WarningLabel: "before lanch", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:"2:0 PM")]
        
        MedicineList.append(contentsOf: newMedicine)
        
    }
    
    func deltetMedication(index:IndexSet){
        MedicineList.remove(atOffsets: index)
    }
    
    func MoveMediciation(from: IndexSet, to: Int){
        MedicineList.move(fromOffsets: from, toOffset: to)
    }
    
   func UpdateMedication(){
        
    }
    func saveMedication(medicineReminder:String) {
        let medicine = ListMediciations(image: "photo.circle", name: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", WarningLabel: "before lanch", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:"2:0 PM")
        MedicineList.append(medicine)
//        let newMedicine = ListMediciations(image: "photo.circle", name: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", WarningLabel: "before lanch", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:"2:0 PM")
        
//        MedicineList.append(contentsOf: medicineReminder)
        
    }
}

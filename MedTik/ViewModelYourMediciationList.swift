//
//  ViewModelYourMediciationList.swift
//  MedTik
//
//  Created by Amaal Almutairi on 16/05/1444 AH.
//

import Foundation
class YourMedicationListVM:ObservableObject{
    
    @Published var MedicineList:[ListMediciations] = []
    @Published var image = ""
    @Published var NameTF = ""
    @Published var MedicineName = ""
    @Published var StrengthTF = ""
    @Published var NumberOfPillTF = ""
    @Published var textEditorInstructions: String = "Type Somthing ..."
    @Published var DateOfBegine = Date()
    @Published var DateOfEnd = Date()
    @Published var EndingDate:Date = Calendar.current.date (from:
    DateComponents (year: 2018)) ?? Date()

    @Published var TimeOfthefirstdose = Date()
    @Published  var selectedNumFrequancy = "Every Day"
    @Published var Options:[String] = ["   ","Evry Day","Day By Day","Twice in week","Once a week"]
    @Published  var selectedTime = "\(2) hour"
    @Published var OptionsTimeOfFrequancy:[String] = ["   ","\(2) hour","\(4) hour","\(6) hour","\(8) hour"]
    @Published  var selectedWarningLabel = "Warning Label"
    @Published var OptionsWarningLabel:[String] = ["Before Brakfast","Before Lanch","Before Dinner"]
     var dateFormatter: DateFormatter {
        let formatter = DateFormatter ()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    init(){
        getAllMediciation()
    }
    
    func getAllMediciation(){
        let newMedicine =  [ListMediciations(name:"nora", image: "photo.circle", MedicineName: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:Date() ), ListMediciations(name:"nora", image: "photo.circle", MedicineName: "panadol", Strength: "500", NumberOfPills:" 1", instruction: "should eat it ", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:Date())]
        
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
        var medicine = ListMediciations(name:NameTF,image:image, MedicineName: MedicineName, Strength: StrengthTF, NumberOfPills: NumberOfPillTF, instruction: textEditorInstructions, Frequancy: selectedNumFrequancy, DateOfBegine:DateOfBegine, DateOfEnd:DateOfEnd, TimeOfFrequancy: selectedNumFrequancy, TimeOfDose:TimeOfthefirstdose)
       // MedicineList.append(medicine)
        medicine.image = image
        medicine.name = NameTF
        medicine.Strength = StrengthTF
        medicine.NumberOfPills = NumberOfPillTF
        medicine.instruction = textEditorInstructions
       // medicine.WarningLabel = selectedWarningLabel
       // medicine.Frequancy = selectedNumFrequancy
        medicine.DateOfBegine = DateOfBegine
        medicine.DateOfEnd = DateOfEnd
        medicine.TimeOfDose = TimeOfthefirstdose
        
        
//        MedicineList.append(contentsOf: image,NameTF,StrengthTF,NumberOfPillTF,textEditorInstructions,selectedWarningLabel,selectedNumFrequancy,DateOfBegine,DateOfEnd)
//        let newMedicine = ListMediciations(image: "photo.circle", name: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", WarningLabel: "before lanch", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:"2:0 PM")
        
//        MedicineList.append(contentsOf: medicineReminder)
        
    }
}

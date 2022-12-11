//
//  ModelListMedication.swift
//  MedTik
//
//  Created by Amaal Almutairi on 16/05/1444 AH.
//

import Foundation



struct ListMediciations : Identifiable {
    var id = UUID().uuidString
    var name:String
    var image:String
    var MedicineName:String
    var Strength: String
    var NumberOfPills:String
    var instruction: String
  //  var WarningLabel:String
    var Frequancy:String
    var DateOfBegine:Date
    var DateOfEnd:Date
    var TimeOfFrequancy:String
    var TimeOfDose:Date
  
}

struct person {
    var name:String
   var MediciationsDetails:[ListMediciations]
}

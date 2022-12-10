//
//  ModelListMedication.swift
//  MedTik
//
//  Created by Amaal Almutairi on 16/05/1444 AH.
//

import Foundation



struct ListMediciations : Identifiable, Hashable {
    var id = UUID().uuidString
    var image:String
    var name:String
    var Strength: String
    var NumberOfPills:String
    var instruction: String
    var WarningLabel:String
    var Frequancy:String
    var DateOfBegine:Date
    var DateOfEnd:Date
    var TimeOfFrequancy:String
    var TimeOfDose:String
  
}

//
//  ListViewMedicationLCell.swift
//  MedTik
//
//  Created by Amaal Almutairi on 15/05/1444 AH.
//

import SwiftUI



struct ListViewMedicationLCell: View {
 //  @State var MedicineList:[ListMediciations] = []
    var Medicine:ListMediciations

    var body: some View {

            ZStack(alignment: .topLeading) {
                HStack{
                     Image(systemName:Medicine.image)
                         .resizable()
                         .scaledToFit()
                         .frame(height: 81)
                     VStack(alignment: .leading){
                         HStack{

                             Text(Medicine.name)
                                 .modifier(Items.TexStyleModifier())

    //                         if var Name = NameTF {
    //                             var name = Int(Name)
    //                         }
                             Text(Medicine.Strength)
                                 .modifier(Items.TexStyleModifier())
                         }.padding(.leading,2)
                         HStack{
                             Image(systemName: "timer")
                                 .resizable()
                                 .scaledToFit()
                                 .frame(height: 24)
                                 .background(.teal)
                                 .clipShape(Circle())
                             Text(Medicine.TimeOfDose)
                                 .modifier(Items.TexStyleModifier())
                         }
                     }
                   
                 }.padding(.trailing)

                .navigationTitle("All Medications")
     
            }


    }
}

struct ListViewMedicationLCell_Previews: PreviewProvider {
    static var previews: some View {
        ListViewMedicationLCell( Medicine: ListMediciations(image: "photo.circle", name: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", WarningLabel: "before lanch", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:"2:0 PM"))

    }
}

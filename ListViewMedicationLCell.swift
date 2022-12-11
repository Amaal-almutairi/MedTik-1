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
    var dateFormatter: DateFormatter {
       let formatter = DateFormatter ()
     //  formatter.dateStyle = .short
       formatter.timeStyle = .short
       return formatter
   }
  //  @EnvironmentObject var vmYourMedication:YourMedicationListVM
    var body: some View {
    
            ZStack(alignment: .topLeading) {
                HStack{
                    Image(systemName:Medicine.image)
                         .resizable()
                         .scaledToFit()
                         .frame(height: 81)
                        
                     VStack(alignment: .leading){
                         
                   
                         Text(Medicine.name)
                             .modifier(Items.TexStyleModifier())
                     
                         HStack{

                             Text(Medicine.MedicineName)
                                 .modifier(Items.TexStyleModifier())

    //                         if var Name = NameTF {
    //                             var name = Int(Name)
    //                         }
                             Text(Medicine.Strength)
                                 .modifier(Items.TexStyleModifier())
                         }
                         HStack{
                             Image(systemName: "timer")
                                 .resizable()
                                 .scaledToFit()
                                 .frame(height: 24)
                                 .background(.teal)
                                 .clipShape(Circle())
                             //   Text( " \(dateFormatter.string(from: ))")
                             Text( " \(dateFormatter.string(from: Medicine.TimeOfDose))")
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
        ListViewMedicationLCell(Medicine: ListMediciations(name:"nora", image: "photo.circle", MedicineName: "panadol", Strength: "500", NumberOfPills: "1", instruction: "should eat it ", Frequancy: "three days", DateOfBegine:Date(), DateOfEnd: Date(), TimeOfFrequancy: "twice", TimeOfDose:Date()))
          //  .environmentObject(YourMedicationListVM())
    }
        
}

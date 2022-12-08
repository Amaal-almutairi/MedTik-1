//
//  add medicine.swift
//  MedTik
//
//  Created by Amaal Almutairi on 14/05/1444 AH.
//

import SwiftUI



struct add_medicine: View {
    
//@State var item = Items()
    
    @State var Addmedicine = ""
    @State var addName = ""
    

    
    var body: some View {

        
        VStack(alignment: .leading, spacing: 17){
            VStack(alignment: .leading){
                Text("Medicine Name")
                    .modifier(Items.TexStyleModifier())
                TextField("add medicine", text: $Addmedicine)
                    .modifier(Items.TextFieldModifier())
            }
            VStack(alignment: .leading){
                Text("Strength")
                    .modifier(Items.TexStyleModifier())
                TextField("Strength", text: $Addmedicine)
                    .modifier(Items.TextFieldModifier())
            }
            VStack{
                Button {

                } label: {
                    Text("Add")
                    
                } .modifier(Items.ButtonModifier())
                    .padding(.top)
            }
      
               

        }
      
    }
}

struct add_medicine_Previews: PreviewProvider {
    static var previews: some View {
        add_medicine()
    }
}

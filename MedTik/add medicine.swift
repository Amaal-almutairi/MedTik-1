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

        
        VStack{
            TextField("add medicine", text: $Addmedicine)
            
                .modifier(Items.TextFieldModifier())
            
            TextField("add name", text: $addName)
                .modifier(Items.TextFieldModifier())
            
            Button {

            } label: {
                Text("Add")
                
            } .modifier(Items.ButtonModifier())
               

        }
      
    }
}

struct add_medicine_Previews: PreviewProvider {
    static var previews: some View {
        add_medicine()
    }
}

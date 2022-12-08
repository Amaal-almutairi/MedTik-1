//
//  Items.swift
//  MedTik
//
//  Created by Amaal Almutairi on 14/05/1444 AH.
//

import SwiftUI



struct Items: View {
    struct ButtonModifier: ViewModifier {
        
        func body(content: Content) -> some View {
            content
                .font(.headline)
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.teal)
                .cornerRadius(10)
                .padding(.leading)
                .padding(.trailing)
        }
    }
//    struct TexStyleModifier: ViewModifier {
//
//        func body(content: Content) -> some View {
//            content
//                .font(.headline)
//                .foregroundColor(.blue)
//                .padding(.leading)
//                .padding(.trailing)
//        }
//    }
    
    struct TextFieldModifier: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(.headline)
                .padding()
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.teal)
                .cornerRadius(10)
                .padding(.leading)
                .padding(.trailing)
        }
    }

    
    var body: some View {
        VStack{
            
        }
  
        
    }
}
struct Items_Previews: PreviewProvider {
    static var previews: some View {
        Items()
     
    }
}

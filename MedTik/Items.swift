//
//  Items.swift
//  MedTik
//
//  Created by Amaal Almutairi on 14/05/1444 AH.
//

import SwiftUI



struct Items: View {

    
    //    @State var NameTF = ""
    //    @State var StrengthTF = ""
    //    @State var NumberOfPillTF = ""
    struct ButtonModifier: ViewModifier {
        
        func body(content: Content) -> some View {
            content
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
            // .background(Color.gray.opacity(0.1))
                .background(Color.teal)
                .cornerRadius(10)
                .padding(.leading)
                .padding(.trailing)
        }
    }
    struct TexStyleModifier: ViewModifier {
        
        func body(content: Content) -> some View {
            content
                .font(.headline)
                .foregroundColor(.black)
            
                .padding(.leading,5)
                .padding(.trailing,5)
        }
    }
    
    struct TextFieldModifier: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(.headline)
                .padding(.leading)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color(.placeholderText).opacity(0.1))
                .cornerRadius(10)
                .padding(.bottom,10)
                .padding(.horizontal)
        }
    }
    
    struct DropDownMenudModifier: ViewModifier {
        func body(content: Content) -> some View {
            content
 
            
            
        }
    }
    
   // @State var current_date = Date()
//      var limitRange: ClosedRange<Date> {
//          let tenDaysAgo = Calendar.current.date(byAdding: .day, value: -10, to: Date())!
//          let fiveDaysFromNow = Calendar.current.date(byAdding: .day, value: 5, to: Date())!
//          return tenDaysAgo...fiveDaysFromNow
//      }
    @State var selectedDate = Date()
    var body: some View {
        Text("")
//
//        VStack {
//                 DatePicker("", selection: $selectedDate, displayedComponents: .date)
//                 Text("Your selected date: \(selectedDate)")
//             }.padding()
        
        
//        DatePicker("Date", selection: $current_date, in: limitRange, displayedComponents: [.date])
//                   .datePickerStyle(WheelDatePickerStyle())
//
//            .padding()
        
//        DatePicker("Select event date and time", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
//
   }
}

struct Items_Previews: PreviewProvider {
    static var previews: some View {
        Items()
     
    }
}

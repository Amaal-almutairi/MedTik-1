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
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .foregroundColor(.black)
            
//                .padding(.leading)
//                .padding(.trailing)
        }
    }
    
    struct TextFieldModifier: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(.headline)
                .lineLimit(2)
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
    
    struct MedicineImgModifier: ViewModifier {
        func body(content: Content) -> some View {
            content
 
//                .scaledToFit()
//                .frame(height: 70)
//                .cornerRadius(4)
            
                .frame(width: 30, height: 30)
                .aspectRatio(contentMode: .fill)
                .background(Color.teal)
                .cornerRadius(50)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(10)
                .padding(.leading)
            
        }
    }
    
    
   // @State var current_date = Date()
//      var limitRange: ClosedRange<Date> {
//          let tenDaysAgo = Calendar.current.date(byAdding: .day, value: -10, to: Date())!
//          let fiveDaysFromNow = Calendar.current.date(byAdding: .day, value: 5, to: Date())!
//          return tenDaysAgo...fiveDaysFromNow
//      }
   /// @State var selectedDate = Date()
    var body: some View {
        Text("")
//        VStack(alignment:.leading){
//            
//     HStack{
//         Image(systemName: "photo.circle")
//             .resizable()
//             .scaledToFit()
//             .frame(height: 81)
//         VStack(alignment: .leading){
//             HStack{
//                 Text("Panadol")
//                     .modifier(Items.TexStyleModifier())
//                 Text("500 mg")
//                     .modifier(Items.TexStyleModifier())
//             }.padding(.leading,2)
//             HStack{
//                 Image(systemName: "timer")
//                     .resizable()
//                     .scaledToFit()
//                     .frame(height: 24)
//                     .background(.teal)
//                     .clipShape(Circle())
//                 Text("Time")
//                     .modifier(Items.TexStyleModifier())
//             }
//         }
//     }
//   
// }.padding(20) //.border(.black)
        
//           HStack{
//               VStack(alignment: .leading){
//                    Image(systemName: "photo.circle")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(height: 81)
//                
//                }
//               VStack(alignment:.leading){
//            HStack{
//                Text("Panadol")
//                    .modifier(Items.TexStyleModifier())
//                Text("500 mg")
//                    .modifier(Items.TexStyleModifier())
//        
//            }.padding(.leading,2)
//            HStack{
//                Image(systemName: "timer")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(height: 24)
//                    .background(.teal)
//                    .clipShape(Circle())
//                Text("Time")
//                    .modifier(Items.TexStyleModifier())
//            }
//        }
//            
//           } .padding(20) //.border(.black)
//            
           // Spacer()
      
            
            //   }.border(.black)
            
            
            //  }.background(.gray).padding(.vertical,5)
            
      
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

//
//  add medicine.swift
//  MedTik
//
//  Created by Amaal Almutairi on 14/05/1444 AH.
//

import SwiftUI



struct add_medicine: View {
    
  
    
    @State var NameTF = ""
    @State var StrengthTF = ""
    @State var NumberOfPillTF = ""
    @State var textEditorInstructions: String = "Type Somthing ..."
    @State var DateOfBegine = Date()
    @State var DateOfEnd:Date = Date()
    @State var EndingDate:Date = Calendar.current.date (from:
    DateComponents (year: 2018)) ?? Date()
    
    @State var TimeOfthefirstdose:Date = Date()
    
    @State private var IsExhandedList = false
    @State private var IsExhandedList1 = false
    @State private var IsExhandedList2 = false
    @State private var selectedNum = "Every Day"
    @State var Options:[String] = ["Evry Day","Day By Day","Twice in week","Once a week"]
    @State private var selectedTime = "\(2) hour"
    @State var OptionsTimeOfFrequancy:[String] = ["\(2) hour","\(4) hour","\(6) hour","\(8) hour"]
    @State private var selectedWarningLabel = "Warning Label"
    @State var OptionsWarningLabel:[String] = ["Before Brakfast","Before Lanch","Before Dinner"]
    //@State var savedText: String = ""
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter ()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        
       NavigationView {
           Form {
               VStack(alignment: .leading, spacing: 10){
                   VStack(alignment: .leading, spacing: 40){
                       Image(systemName: "camera")
                           .frame(width: 30,height: 30)
                                   .cornerRadius(50)
                                   .frame(width: 100, height: 100)
                                   .background(Color.teal)
                                   .aspectRatio(contentMode: .fill)
                                   .clipShape(Circle())
                                   .padding(8)
                      //     .frame(width: 70,height: 70)
                         
                          
                           
                   }.padding(.leading,100)
                   
                   VStack(alignment: .leading){
                       Text("Medicine Name")
                           .padding(.leading)
                           .modifier(Items.TexStyleModifier())
                       TextField("add medicine", text: $NameTF)
                           .modifier(Items.TextFieldModifier())
                   }
                   VStack(alignment: .leading){
                       Text("Strength")
                           .padding(.leading)
                           .modifier(Items.TexStyleModifier())
                       TextField("Strength", text: $StrengthTF)
                           .modifier(Items.TextFieldModifier())
                           .keyboardType(.numberPad)
                   }
                   VStack(alignment: .leading){
                       Text("Number of pills that taking:")
                           .padding(.leading)
                           .modifier(Items.TexStyleModifier())
                       TextField("Number of pills that taking:", text: $NumberOfPillTF)
                           .modifier(Items.TextFieldModifier())
                   }
                   VStack(alignment: .leading){
                       Text("Instructions")
                      .padding(.leading)
                           .modifier(Items.TexStyleModifier())
                         //  .padding(.leading)
                       TextEditor (text: $textEditorInstructions)
                           .font(.headline)
                           .padding(.leading)
                           .foregroundColor(.black)
                           .frame(maxWidth: .infinity)
                           .frame(height: 150)
                           .background(Color(.placeholderText).opacity(0.1))
                           .cornerRadius(10)
                           .padding(.bottom,10)
                           .padding(.horizontal)
                   }
                   VStack(alignment: .leading){
                       DatePicker("Date Of Begine", selection: $DateOfBegine, displayedComponents: .date)
                           .modifier(Items.TexStyleModifier())
                     
                       DatePicker("Date Of End", selection: $DateOfEnd)
                           .datePickerStyle(.wheel)

                           .modifier(Items.TexStyleModifier())
                       DatePicker("Time Of the first dose ", selection: $TimeOfthefirstdose, displayedComponents: .hourAndMinute)
                          
                           .modifier(Items.TexStyleModifier())
                       DropDownMenu
                       DropDownMenuTimeOfFrequancy
                       DropDownMenuWarningLabel
                   }.padding()
                   
                 
                   VStack{
                       Button {
                           // savedText = textEditorText
                       } label: {
                           Text("Add")
                           
                       } .modifier(Items.ButtonModifier())
                           .padding(.top)
                       // Text(savedText)
                   }
                   
               }.padding(.leading,10).padding(.trailing,10)
               
          
           }
       
           .navigationTitle("Add Medicine")
           .listStyle(.insetGrouped)
                }
 

        
        }
    
    var DropDownMenu: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Text ("Frequancy")
                .padding()
                .modifier(Items.TexStyleModifier())
             
            DisclosureGroup(" \(selectedNum)", isExpanded: $IsExhandedList) {
                ScrollView {
                    VStack {
                        ForEach(Options, id: \.self) { option
                            in
                            Text(" \(option)")
                                .frame(maxWidth: .infinity)
                                .modifier(Items.TexStyleModifier())
                                .padding(.all)
                                .onTapGesture {
                                    self.selectedNum = option
                                    withAnimation {
                                        self .IsExhandedList.toggle()
                                    }
                                }
                        }
                    }
                    
                }
                .frame(height: 150)
             //   .accentColor(.white)
               // .font(.title2)
               // .foregroundColor(.white)
               // .padding(.all)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                
            }.padding(.leading)
        }
    }
    
    //Warning Label
    var DropDownMenuTimeOfFrequancy: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Text ("Time of Frequancy")
                .padding()
                .modifier(Items.TexStyleModifier())
             
            DisclosureGroup(" \(selectedTime)", isExpanded: $IsExhandedList1) {
                ScrollView {
                    VStack {
                        ForEach(OptionsTimeOfFrequancy, id: \.self) { optionTime
                            in
                            Text(" \(optionTime)")
                                .frame(maxWidth: .infinity)
                                .modifier(Items.TexStyleModifier())
                                .padding(.all)
                                .onTapGesture {
                                    self.selectedTime = optionTime
                                    withAnimation {
                                        self .IsExhandedList1.toggle()
                                    }
                                }
                        }
                    }
                    
                }
                .frame(height: 150)
             //   .accentColor(.white)
               // .font(.title2)
               // .foregroundColor(.white)
               // .padding(.all)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                
            }.padding(.leading)
        }
    }
    
    var DropDownMenuWarningLabel: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Text ("Warning Label")
                .padding()
                .modifier(Items.TexStyleModifier())
             
            DisclosureGroup(" \(selectedWarningLabel)", isExpanded: $IsExhandedList2) {
                ScrollView {
                    VStack {
                        ForEach(OptionsWarningLabel, id: \.self) { optionWarning
                            in
                            Text(" \(optionWarning)")
                                .frame(maxWidth: .infinity)
                                .modifier(Items.TexStyleModifier())
                                .padding(.all)
                                .onTapGesture {
                                    self.selectedWarningLabel = optionWarning
                                    withAnimation {
                                        self .IsExhandedList2.toggle()
                                    }
                                }
                        }
                    }
                    
                }
                .frame(height: 150)
             //   .accentColor(.white)
               // .font(.title2)
               // .foregroundColor(.white)
               // .padding(.all)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                
            }.padding(.leading)
        }
    }
 
}
/*
 DatePicker("Select a date", selection: $selectedDate, in:
 startingDate...endingDate, displayedComponents: [.date])
 */
struct add_medicine_Previews: PreviewProvider {
    static var previews: some View {
        add_medicine()
    }
}


//   NavigationView{
//            ScrollView {
//                Form {
//                    Section{
//                        Text("Medicine Name")
//                            .modifier(Items.TexStyleModifier())
//                        TextField("Medicine Name", text: $NameTF)
//                            .modifier(Items.TextFieldModifier())
//                    }
//
//                    Section{
//                        Text("Strength")
//                            .modifier(Items.TexStyleModifier())
//                        TextField("Strength", text: $StrengthTF)
//                            .modifier(Items.TextFieldModifier())
//                            .keyboardType(.numberPad)
//                    }
//
//                    Section{
//                        Text("Number of pills that taking:")
//                            .modifier(Items.TexStyleModifier())
//                        TextField("Number of pills that taking:", text: $NumberOfPillTF)
//                            .modifier(Items.TextFieldModifier())
//
//                    }
//                    Section {
//                        Text("Instructions")
//                            .modifier(Items.TexStyleModifier())
//                        TextEditor (text: $textEditorInstructions)
//                            .frame (height: 250)
//                            . foregroundColor(.black)
//                            .colorMultiply(Color.gray.opacity(0.2))
//                            .cornerRadius (10)
//                            .padding(.leading,15)
//                            .padding(.trailing)
//
//                    }
//
//                    Button {
//                        // savedText = textEditorText
//                    } label: {
//                        Text("Add")
//
//                    } .modifier(Items.ButtonModifier())
//                        .padding(.top)
//
//                    // Text(savedText)
//
//                }
//                .navigationBarTitle("Add Medicine")
//                .formStyle(.columns)
//
//            }
//
//        }

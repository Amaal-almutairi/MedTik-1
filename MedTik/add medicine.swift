//
//  add medicine.swift
//  MedTik
//
//  Created by Amaal Almutairi on 14/05/1444 AH.
//

import SwiftUI




struct add_medicine: View {
    
    @EnvironmentObject var vmYourMedication:YourMedicationListVM

    
    @State  var IsExhandedList = false
    @State  var IsExhandedList1 = false
    @State  var IsExhandedList2 = false
    

    
    //       @State var StrengthMedicine = Int(StrengthTF)
    
    var body: some View {
        
        NavigationView {
                    Form {
                        VStack(alignment: .leading, spacing: 50){
                            HStack(alignment: .center){
                                Image(systemName: "camera")
                                    .frame(width: 30,height: 30)
                                    .cornerRadius(50)
                                    .frame(width: 100, height: 100)
                                    .background(Color.teal)
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .padding(.horizontal, -13.0)
                 
                            }.padding(.leading,100)
                            
                            VStack(alignment: .leading){
                                
                                Text("Your Name")
                                 //   .padding(.leading)
                                    .modifier(Items.TexStyleModifier())
                                   // .padding(.leading, -10.0)
                                TextField("Your Name", text: $vmYourMedication.NameTF)
                                    .modifier(Items.TextFieldModifier())
                                    .padding(.bottom,30)
                                Text("Medicine Name")
                                 //   .padding(.leading)
                                    .modifier(Items.TexStyleModifier())
                                   // .padding(.leading, -10.0)
                                TextField("add medicine", text: $vmYourMedication.MedicineName)
                                    .modifier(Items.TextFieldModifier())
                                
                            } .padding(.leading, -25.0)
                            VStack(alignment: .leading){
                                Text("Strength")
                                  //  .padding(.leading)
                                    .modifier(Items.TexStyleModifier())
                                TextField("Strength", text:$vmYourMedication.StrengthTF)
                                    .modifier(Items.TextFieldModifier())
                                    .keyboardType(.numberPad)
                            }.padding(.leading, -25.0)
                            
                            VStack(alignment: .leading){
                                Text("Number of pills that taking:")
                                   
                                    .modifier(Items.TexStyleModifier())
                                TextField("Number of pills that taking:", text:$vmYourMedication.NumberOfPillTF).keyboardType(.numberPad)
                              
                                    .modifier(Items.TextFieldModifier())
                            }.padding(.leading, -20.0)
                            VStack(alignment: .leading){
                                Text("Instructions")
                               .modifier(Items.TexStyleModifier())
                                   
                                    .padding(.leading, -10.0)
                                TextEditor(text:$vmYourMedication.textEditorInstructions)
                                    .font(.headline)
                                   
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 150)
                                    .background(Color(.placeholderText).opacity(0.1))
                                    .cornerRadius(10)
                                  
                            } .padding(.vertical,30)
                            VStack(alignment: .leading){
                                DatePicker("Date Of Begine", selection: $vmYourMedication.DateOfBegine, displayedComponents: .date)
                              //  vmYourMedication.dateFormatter
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .padding(.vertical,30)
                                   // .modifier(Items.TexStyleModifier())
                                    
                                DatePicker("Date Of End", selection: $vmYourMedication.DateOfBegine, displayedComponents: .date)
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .padding(.vertical,30)
                                   // .modifier(Items.TexStyleModifier())
                                 
                                   // .modifier(Items.TexStyleModifier())
                                DatePicker("Time Of the first dose ", selection: $vmYourMedication.TimeOfthefirstdose, displayedComponents: .hourAndMinute)
                                    .font(.headline)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .foregroundColor(.black)
                             //  .modifier(Items.TexStyleModifier())
                                    .padding(.vertical,30)
                               
                                DropDownMenu
                                   
                                    .padding(.vertical,30)
                                   
                                DropDownMenuTimeOfFrequancy
                                    .padding(.vertical,30)
                            }.padding(.vertical,10)
                            
                            
                          
//                                Button {
//                                    guard !vmYourMedication.NameTF.isEmpty else {return}
//                                } label: {
//
//                                    NavigationLink("Add", destination: MediciationView())
//                                        .modifier(Items.ButtonModifier())
//                                        .padding(.leading, -10.0)
//
//                                }
                           // }
                            
                            
                        }.padding(.leading)
                        VStack(alignment: .center){
                //                                    guard !vmYourMedication.NameTF.isEmpty else {return}
                            NavigationLink("add", destination: MediciationView())
                                .modifier(Items.ButtonModifier())
                        }
                       
                        
                    }
                    .navigationTitle("Add Medicine")
                   

      
        } .listStyle(.plain)
        
    }
            var DropDownMenu: some View {
                VStack(alignment: .leading, spacing: 15) {
                    Picker("Frequancy", selection: $vmYourMedication.selectedNumFrequancy) {
                                ForEach(vmYourMedication.Options, id: \.self) {
                                    Text($0)
                                }
                              
                            }
                    .font(.headline)
                    .foregroundColor(.black)
                    
                    .pickerStyle(.menu)
                  .buttonStyle(.bordered)
                    .backgroundStyle(.teal)

               }
                
   
                
                
            }
            //    @State var image = ""
            //    @State var NameTF = ""
            //    @State var StrengthTF = ""
            //    @State var NumberOfPillTF = ""
            //    @State var textEditorInstructions: String = "Type Somthing ..."
            //    @State var DateOfBegine = Date()
            //    @State var DateOfEnd = Date()
            //    @State var EndingDate:Date = Calendar.current.date (from:
            //    DateComponents (year: 2018)) ?? Date()
            
            
            func AddMedicine() {
                //        vmYourMedication.saveMedication(medicineReminder: [image,NameTF,StrengthTF,NumberOfPillTF,textEditorInstructions,DateOfBegine,DateOfEnd])
                //        vmYourMedication.saveMedication(medicineReminder: vmYourMedication.image)
                //        vmYourMedication.saveMedication(medicineReminder: vmYourMedication.NameTF)
                //        vmYourMedication.saveMedication(medicineReminder: vmYourMedication.StrengthTF)
                //        vmYourMedication.saveMedication(medicineReminder: vmYourMedication.NumberOfPillTF)
                //        vmYourMedication.saveMedication(medicineReminder: vmYourMedication.textEditorInstructions)
                
                
                //        vmYourMedication.saveMedication(medicineReminder: DateOfBegine)
                //        vmYourMedication.saveMedication(medicineReminder: DateOfEnd)
            }
            
            var DropDownMenuTimeOfFrequancy: some View {
                VStack(alignment: .leading, spacing: 15) {
                    Picker("Time of Frequancy", selection: $vmYourMedication.selectedTime) {
                                ForEach(vmYourMedication.OptionsTimeOfFrequancy, id: \.self) {
                                    Text($0)
                                }
                            }
                    .font(.headline)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                    .foregroundColor(.black)
                    .pickerStyle(.menu)
                  .buttonStyle(.bordered)
                    .backgroundStyle(.teal)

               }
            }

    }



struct add_medicine_Previews: PreviewProvider {
    static var previews: some View {
        add_medicine()
            .environmentObject(YourMedicationListVM())
    }
}

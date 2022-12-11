//
//  UpCommingCustomCell.swift
//  MedTik
//
//  Created by Amaal Almutairi on 17/05/1444 AH.
//

import SwiftUI

struct UpCommingCustomCell: View {
    @EnvironmentObject var vmYourMedication:YourMedicationListVM
    var body: some View {
       
        ZStack{
            VStack(alignment: .leading){
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .frame(width: 300)
                    .background(.teal)
                    .padding(.horizontal)
                
                
            }
            TabView {
                    HStack{
                        Image(systemName:"photo.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 81)
                            .cornerRadius(50)
                            .padding(.vertical,10)
                        
                        VStack(alignment: .leading){
                            
                            
                            Text(vmYourMedication.NumberOfPillTF)
                            //  .modifier(Items.TexStyleModifier())
                            
                            HStack{
                                
                                Text(vmYourMedication.MedicineName)
                                    .modifier(Items.TexStyleModifier())
                                
                                //                         if var Name = NameTF {
                                //                             var name = Int(Name)
                                //                         }
                                Text(vmYourMedication.StrengthTF)
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
                                Text( " \(vmYourMedication.dateFormatter.string(from: vmYourMedication.TimeOfthefirstdose))")
                                    .modifier(Items.TexStyleModifier())
                            }
                            
                        }
                        
                    }.padding(.trailing) .background(Color.white.opacity(1)) .cornerRadius(20)
                
                HStack{
                    Image(systemName:"photo.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 81)
                        .cornerRadius(50)
                        .padding(.vertical,10)
                    
                    VStack(alignment: .leading){
                        
                        
                        Text(vmYourMedication.NumberOfPillTF)
                        //  .modifier(Items.TexStyleModifier())
                        
                        HStack{
                            
                            Text(vmYourMedication.MedicineName)
                                .modifier(Items.TexStyleModifier())
                            
                            //                         if var Name = NameTF {
                            //                             var name = Int(Name)
                            //                         }
                            Text(vmYourMedication.StrengthTF)
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
                            Text( " \(vmYourMedication.dateFormatter.string(from: vmYourMedication.TimeOfthefirstdose))")
                                .modifier(Items.TexStyleModifier())
                        }
                        
                    }
                    
                }.padding(.trailing) .background(Color.white.opacity(1)) .cornerRadius(20)
                
                }
                
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
          //  }
            
        }
    }
}

struct UpCommingCustomCell_Previews: PreviewProvider {
    static var previews: some View {
        UpCommingCustomCell()
            .environmentObject(YourMedicationListVM())
    }
}

//
//  addcalendarView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//
import Blackbird
import SwiftUI

struct addcalendarView: View {
    
    @State var name: String = ""
    @State var date: Int = 1
    @State var description: String = ""
    
    @Environment(\.blackbirdDatabase) var db: Blackbird.Database?
    
    var body: some View {
        
        VStack {
            HStack{
                Picker("Classes", selection: $name) {
                    ForEach(name, id: \.self) {
                        Text(name)
                            .frame(height: 30)
                    }
                }
                .pickerStyle(.menu)
            }
            HStack{
                TextField("description", text: $description)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 30)
                
            }
            
            Button(action: {
                Task{
                    try await db!.transaction { core in
                        try core.query("INSERT INTO Class (name, descriton) VALUES (?)", name, description)
                        
                    }
                }
                name = ""
            }, label: {
                    Text("ADD")
                    .font(.title2)
                
            })
            }
                   }
                   struct addcalendarView_Previews: PreviewProvider {
                static var previews: some View {
                    addcalendarView()
                        .environment(\.blackbirdDatabase,AppDatabase.instance)
                }
            }
        }
    

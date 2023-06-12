//
//  ContentView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 30.05.23.
//
import Blackbird
import SwiftUI

struct mainView: View {
    
    @Environment(\.blackbirdDatabase) var db:
    Blackbird.Database?
    
    @BlackbirdLiveModels({ db in
        try await Class.read(from: db)
    }) var Classes
    
    
    
    
    let name = ["Math", "Science", "History", "English"]
    
    @State var addCalendarSheetShowing = false
    @State var addClassSheetShowing = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack{
                    Text("Calendar")
                        .font(.largeTitle)
                    Spacer()
                    
                    Menu {
                        Button("Calendar", action: {
                            addCalendarSheetShowing = true
                        })
                        
                        Button("Class", action: {
                            addClassSheetShowing = true
                        })
                    }
                label: {
                    Label("", systemImage: "plus")
                }
                    
                    
                    
                }
                .frame(width:350, height: 10)
                
                
                
                HStack{
                    NavigationLink(destination: calendarView()) {
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(Color.black, lineWidth: 2)
                            .cornerRadius(10)
                            .frame(width: 350, height: 150)
                            .padding()
                    }
                }
                
                HStack{
                    
                    Text("Classes")
                        .font(.largeTitle)
                    Spacer()
                }
                .frame(width: 350, height: 20)
                
                VStack {
                    
                    List(Classes.results) { currentClass in
                        classitemView(name: currentClass.name)
                            .listRowSeparator(.hidden)
                        
                    }
                    .listStyle(.plain)
                    
                }
                
                .frame(width: 350, height: 530)
                .cornerRadius(10)
                
            }
            .sheet(isPresented: $addCalendarSheetShowing) {
                addcalendarView()
                    .presentationDetents([.fraction(0.5)])
            }
            .sheet(isPresented: $addClassSheetShowing) {
                addclassView()
                    .presentationDetents([.fraction(0.5)])
                
            }
        }
    }
    
    struct mainView_Previews: PreviewProvider {
        static var previews: some View {
            mainView()
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}



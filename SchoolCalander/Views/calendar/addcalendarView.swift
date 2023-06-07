//
//  addcalendarView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//
import Blackbird
import SwiftUI

struct addcalendarView: View {
    
    @State private var showingCredits = false
    
    let name: String = "Math"
    let date: Int = 1
    let description: String = "Math Homework"
   
    var body: some View {
        Button("Show Credits") {
            showingCredits.toggle()
        }
        .sheet(isPresented: $showingCredits) {
            Text("This app was brought to you by Hacking with Swift")
                .presentationDetents([.medium, .large])
        }
        
        
    }
}
struct addcalendarView_Previews: PreviewProvider {
    static var previews: some View {
        addcalendarView()
            .environment(\.blackbirdDatabase,AppDatabase.instance)
    }
}


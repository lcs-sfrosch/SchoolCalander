//
//  addClassview.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//
import Blackbird
import SwiftUI

struct addcalssView: View {
    
    @State private var showingCredits = false
    
    let name: String = "Math"

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
struct addcalssview_Previews: PreviewProvider {
    static var previews: some View {
        addcalssView()
            .environment(\.blackbirdDatabase,AppDatabase.instance)
    }
}


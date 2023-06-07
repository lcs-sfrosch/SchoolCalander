//
//  addClassview.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//

import SwiftUI

struct addcalssView: View {
    
    @State private var showingCredits = false
    
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
    }
}


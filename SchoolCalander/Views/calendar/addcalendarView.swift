//
//  addcalendarView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//
import Blackbird
import SwiftUI

struct addcalendarView: View {
    
    @State var name: String = "Math"
    @State var date: Int = 1
    @State var description: String = "Math Homework"

    
    var body: some View {
        
        VStack {
            Text("Add Calendar Item")
        }
        
        
    }
}
struct addcalendarView_Previews: PreviewProvider {
    static var previews: some View {
        addcalendarView()
            .environment(\.blackbirdDatabase,AppDatabase.instance)
    }
}


//
//  addcalendarView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//
import Blackbird
import SwiftUI

struct addcalendarView: View {
    
    let name: String = "Math"
    let date: Int = 1
    let description: String = "Math Homework"
    
    func addcalendaritem() { }
    func addclassitem() { }
    
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


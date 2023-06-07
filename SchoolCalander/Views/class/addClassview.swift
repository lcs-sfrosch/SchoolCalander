//
//  addClassview.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//
import Blackbird
import SwiftUI

struct addclassView: View {
    

    var body: some View {
        
        VStack {
            Text("Add Class View")
        }
        
        
    }
}
struct addcalssview_Previews: PreviewProvider {
    static var previews: some View {
        addclassView()
            .environment(\.blackbirdDatabase,AppDatabase.instance)
    }
}


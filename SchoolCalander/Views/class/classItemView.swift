////
////  classItemView.swift
////  SchoolCalander
////
////  Created by Sebastian Frosch on 05.06.23.
////
import Blackbird
import SwiftUI

//let name: String

struct classitemView: View {
    
    let name = "Math"
    
    var body: some View {
      
    Text(name)

    }
}

struct classitemView_Previews: PreviewProvider {
    static var previews: some View {
        classitemView()
    }
}

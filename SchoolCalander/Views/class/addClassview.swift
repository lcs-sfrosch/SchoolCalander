//
//  addClassview.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//
import Blackbird
import SwiftUI

struct addclassView: View {
    
    @State var name: String = ""
    
    var body: some View {
        VStack {
            HStack{
                TextField("Class", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 30)
                    .padding()
                
            }
            .frame(width:350, height: 20)
        }
    }
}
struct addclassView_Previews: PreviewProvider {
    static var previews: some View {
        addclassView()
            .environment(\.blackbirdDatabase,AppDatabase.instance)
    }
}

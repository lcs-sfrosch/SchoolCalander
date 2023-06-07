//
//  classListView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//
import Blackbird
import SwiftUI

struct classlistView: View {
    
    @BlackbirdLiveModels({ db in
        try await Class.read(from: db)
    }) var Classes
    
    var body: some View {
     
            List(Classes.results) { currentClass in
                classitemView(name: currentClass.name)
                    .listStyle(.plain)
                    .listRowInsets(EdgeInsets())
                   
                    
           
        }
        
           
          
    }
    
}
struct classlistView_Previews: PreviewProvider {
    static var previews: some View {
        classlistView()
            .environment(\.blackbirdDatabase, AppDatabase.instance)
    }
}

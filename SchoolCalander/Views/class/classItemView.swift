////
////  classItemView.swift
////  SchoolCalander
////
////  Created by Sebastian Frosch on 05.06.23.
////
import Blackbird
import SwiftUI



struct classitemView: View {
    
    let name: String
   
    var body: some View {
      
        HStack{
            ZStack{
                Text(name)
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color.black, lineWidth: 2)
                    .cornerRadius(10)
                    .frame(width:350, height: 50)
                
            }
        }
    }
}

struct classitemView_Previews: PreviewProvider {
    static var previews: some View {
        classitemView(name: "math")
            .environment(\.blackbirdDatabase,AppDatabase.instance)
    }
}

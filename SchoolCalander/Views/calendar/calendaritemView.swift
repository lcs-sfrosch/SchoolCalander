//
//  calendaritemView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 05.06.23.
//

import Blackbird
import SwiftUI



struct calendaritemView: View {
    
    var name: String = "Math"
    var date: Int = 1
    var description: String = "Math Homework"
   
    var body: some View {
      
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color.black, lineWidth: 2)
                    .cornerRadius(10)
                    .frame(width:350, height: 50)
                
            }
        }
    }
}

struct calendaritemView_Previews: PreviewProvider {
    static var previews: some View {
        calendaritemView()
            .environment(\.blackbirdDatabase,AppDatabase.instance)
    }
}

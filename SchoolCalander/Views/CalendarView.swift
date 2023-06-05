//
//  calendarView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 01.06.23.
//

import SwiftUI

struct calendarView: View {
    
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9", "Item 10"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Calendar")
                    .font(.largeTitle)
                Spacer()
            }
            
            VStack {
                List {
                    ScrollView {
                        ForEach(items.indices, id: \.self) { index in
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.black, lineWidth: 2)
                        }
                    }
                }
            }
            .frame(width: 350, height: 500)
            .cornerRadius(10)
        }
    }
}

struct calendarView_Previews: PreviewProvider {
    static var previews: some View {
        calendarView()
    }
}

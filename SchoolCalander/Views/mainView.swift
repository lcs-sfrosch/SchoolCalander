//
//  ContentView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 30.05.23.
//

import SwiftUI

struct mainView: View {
    
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9", "Item 10"]
    
    let classes = ["Math", "Science", "History", "English"]
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack{
                    Text("Calendar")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.accentColor)
                        .padding()
                    
                    
                }
                .frame(width:350, height: 10)
                
                
                
                HStack{
                    NavigationLink(destination: calendarView()) {
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(Color.black, lineWidth: 2)
                            .cornerRadius(10)
                            .frame(width: 350, height: 150)
                            .padding()
                    }
                }
                
                HStack{
                    
                    Text("Classes")
                        .font(.largeTitle)
                    Spacer()
                }
                .frame(width: 350, height: 20)
                
                VStack {
                    
                    List {
                        ScrollView {
                            
                            ForEach(items.indices, id: \.self){ index in
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color.black, lineWidth: 2)
                                    .cornerRadius(10)
                                    .frame(width:350, height: 100)
                                
                                
                            }
                        }
                    }
                    .listStyle(.plain)
                    .listRowInsets(EdgeInsets())
                    
                }
                
                .frame(width:350, height: 500)
                .cornerRadius(10)
                
            }
        }
    }
  
    
    
    struct mainView_Previews: PreviewProvider {
        static var previews: some View {
            mainView()
        }
    }
}



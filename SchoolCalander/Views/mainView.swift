//
//  ContentView.swift
//  SchoolCalander
//
//  Created by Sebastian Frosch on 30.05.23.
//

import SwiftUI

struct mainView: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9", "Item 10"]
    
    var body: some View {
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
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color.gray, lineWidth: 2)
                    .frame(width:350, height: 150)
                    .padding()
            }
            
            VStack {
                
                List {
                    ScrollView {
                        ForEach(items, id: \.self) { item in
                            
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.gray, lineWidth: 2)
                                .frame(width:350, height: 75)
                            
                        }
                    }
                }
                
                .listStyle(.plain)
            }
            .frame(width:350, height: 500)
            .cornerRadius(10)
            
        }
    }
    
    struct mainView_Previews: PreviewProvider {
        static var previews: some View {
            mainView()
        }
    }
}


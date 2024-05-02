//
//  ContentView.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 29.04.2024.
//

import SwiftUI







struct ContentView: View {
    
    @ObservedObject var data: Datastore
    
    
    
    
    
    @State var activateRootlink = false
    
    var body: some View {
        
        NavigationView {
            List {
                
                
                ForEach(Array(data.storeArray.enumerated()), id: \.element.id) { index, item in
                    
                    NavigationLink(destination: ItemInfo(data: data, index: index)) {
                        Cell(reminder: item)
                    }

                    
                }
                
            }
            .navigationTitle(Text("title"))
            .toolbar {
                NavigationLink(destination: {
                    
                    CreateItem(data: data)
                    
                    
                    
                    
                }, label: {
                    Image(systemName: "plus.app")
                })
            }
            
        }
        
        
        
        
        
        
        
        
        
    }
    
    
}

#Preview {
    ContentView(data: Datastore())
}

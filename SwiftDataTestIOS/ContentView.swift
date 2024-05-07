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

                    ZStack {
                        
                        
                        
                       
                        
                        
                        Cell(reminder: item)

                        NavigationLink(destination: ItemInfo(data: data, index: index)) {
                            
                            
                        }
                        .opacity(0)
                    }
                }
                .onDelete(perform: { indexSet in
                    data.storeArray.remove(atOffsets: indexSet)
                })
                
            }
            .listStyle(.plain)
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

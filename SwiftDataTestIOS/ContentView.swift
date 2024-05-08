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
                    
                    
                    
                    
                    //Cell(reminder: item)

                    // MARK: -  SHOULD WORK
                    DisclosureGroup {
                        Text(item.description)
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                            .padding(.horizontal, -15)
                    } label: {
                        NavigationLink(destination: ItemInfo(data: data, index: index)) {

                            Cell(reminder: item)
                        }
                    }
                    
                    
                    
                    
                    // navlink inside disclosuregroup, not dicslosuregroup inside navlink
                    

//                    NavigationLink(destination: ItemInfo(data: data, index: index)) {
//                        
//                        Cell(reminder: item)
//                    }
                    
                    
                }
                .onDelete(perform: { indexSet in
                    data.storeArray.remove(atOffsets: indexSet)
                })
                
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

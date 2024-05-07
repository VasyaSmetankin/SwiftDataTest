//
//  ItemInfo.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 02.05.2024.
//

import SwiftUI

struct ItemInfo: View {
    
    
    
    
    @ObservedObject var data: Datastore
    
    
    var index: Int
    
    
    @State var item = Reminder()
    
    
    
    @State private var itemTitle = ""
    @State private var itemDescription = ""
    
    
    var pickerValues = ["red", "yellow", "green"]
    @State private var selectedColor = "yellow"
    
    
    
    func emptyCheck(_ string: String) -> String {

        if string.isEmpty {
            return "empty"
            
        } else {
            return string
        }
        
    }
    

    
    
    var body: some View {
        
        
        
        
        VStack(alignment: .center) {
            
            
            
            TextField("title", text: $itemTitle)
                .textFieldStyle(.roundedBorder)
            TextField("description", text: $itemDescription)
                .textFieldStyle(.roundedBorder)
            
            
            
            Picker("value", selection: $selectedColor) {
                ForEach(pickerValues, id: \.self) { item in
                    Text(item)
                }
                
            }
            .pickerStyle(.inline)
                
            
            
            
            
        }
        .onAppear {

            item = data.storeArray[index]
            
            itemTitle = item.title
            
            itemDescription = item.description
            
            selectedColor = item.completion.selectedValueToString()
            
            
        }
        .onDisappear {
            
            data.storeArray[index] = Reminder(
                title: emptyCheck(itemTitle),
                description: emptyCheck(itemDescription),
                completion: item.completion.stringToSelectedValue(string: selectedColor)
            )
            
        }
    }
    
}

#Preview {
    ItemInfo(data: Datastore(), index: 1)
}

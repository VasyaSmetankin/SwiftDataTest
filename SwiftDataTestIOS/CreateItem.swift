//
//  CreateItem.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 01.05.2024.
//

import SwiftUI

struct CreateItem: View {
    
    
    
    
    @ObservedObject var data: Datastore
    
    
    @Environment(\.dismiss) private var dismiss
    
    
    @State var textBoxTitle = ""
    
    @State var textBoxDescription = ""
    var body: some View {
        
        
        
        VStack(spacing: 15) {
            TextField("Title", text: $textBoxTitle)
            
            TextField("description", text: $textBoxDescription)
            
            
            
            Button("Create") {
                var itemCreation = Reminder(
                    title: "CreatedTitle",
                    description: "CreatedDescription",
                    completion: .red
                )
                
                
                data.storeArray.append(itemCreation)
                
                    dismiss()
                
               
                
            }
            
            
            
            
            
            
            
            
        }
    }
}

#Preview {
    CreateItem(data: Datastore())
}

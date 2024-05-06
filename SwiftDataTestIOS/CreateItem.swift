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
    
    
    
    var pickerValues = ["red", "yellow", "green"]
    
    
    @State private var selectedColor = ""
    
    
    
    func dosmt() {
        print("smth")
    }
    
    
    func emptyCheck(_ string: String) -> String {

        if string.isEmpty {
            return "empty"
            
        } else {
            return string
        }
        
    }
    
    
    
    
    func setupCompletion(_ string: String) -> Completion  {
        
        
        switch string {
        case "red":
            return .red
        case "green":
            return .green
        case "yellow":
            return .yellow
        default:
            return .red
        }
        
    }
    
    
    
    
    var body: some View {
        
        
        
        VStack(spacing: 15) {
            TextField("Title", text: $textBoxTitle)
                .textFieldStyle(.roundedBorder)
            
            
            TextField("description", text: $textBoxDescription)
                .textFieldStyle(.roundedBorder)

            VStack {
                Picker("Picker", selection: $selectedColor) {
                    ForEach(pickerValues, id: \.self) { item in
                        
                        Text(item)
                        
                        
                        
                    }
                }
                .pickerStyle(.inline)
                
                Text("current selection: \(selectedColor)")
            }
            

            Button("Create") {
                let itemCreation = Reminder(
                    title: emptyCheck(textBoxTitle),
                    description: emptyCheck(textBoxDescription),
                    completion: setupCompletion(selectedColor)
                )
                
                
                data.storeArray.append(itemCreation)
                
                    dismiss()
  
            }

        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}

#Preview {
    CreateItem(data: Datastore())
}

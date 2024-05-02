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
    
    
    
    
    
    
    private func setCompetion(item: Reminder) -> String {
        
        
        switch item.completion {
            
        case .green:
            return "green"
        case .yellow:
            return "yellow"
        case .red:
            return "red"
        }

    }
    
    
    var body: some View {
        
        
        
        
        VStack(alignment: .center) {
            
            
            
            
            Text(item.id.uuidString)
            Text(item.title)
            Text(item.description)
            Text(setCompetion(item: item))
        }
        .onAppear {
            
            
            item = data.storeArray[index]
            
        }
    }
    
}

#Preview {
    ItemInfo(data: Datastore(), index: 1)
}

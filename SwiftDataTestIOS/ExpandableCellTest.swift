//
//  ExpandableCellTest.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 07.05.2024.
//

import SwiftUI





struct ExpandableCellTest: View {
    
    
    
    @ObservedObject var data: Datastore
    
    
    @State private var isexp = false
    
    
    
    var lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    var body: some View {
        
        
        NavigationStack {
            
            List {
                
                //ExpandableCell()
                
                
                
                DisclosureGroup(isExpanded: $isexp) {
                    Text(lorem)
                        .font(.caption)
                        .foregroundStyle(Color.gray)
                        .padding(.horizontal, -15)
                } label: {
                    NavigationLink(destination: ItemInfo(data: data, index: 0)) {
                        Cell(reminder: data.storeArray[0])
                    }
                }
                
                
                
            }
        }
        
        
    }
}


#Preview {
    ExpandableCellTest(data: Datastore())
    
    
}

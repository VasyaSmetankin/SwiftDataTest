//
//  Cell.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 30.04.2024.
//

import SwiftUI

struct Cell: View {
    
    
    
    
    
    
    var reminder: Reminder


    
    
    var color: Color {
        
        switch reminder.completion {
        case .green:
            return Color.green
        case .yellow:
            return Color.yellow
        case .red:
            return Color.red
        }
        
    }
    
    
    var body: some View {
        
        
        
        HStack {
            Text(reminder.title)
            
            Spacer()
            
            
            
            Circle()
                .frame(width: 10, height: 10)
                .foregroundStyle(color)
            
            
            
            
            
            
        }
        
    }
}

#Preview {
    Cell(reminder: Reminder(title: "1", description: "2", completion: .green))
}

//
//  Reminder.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 30.04.2024.
//




import Foundation





enum Completion {
    case green 
    case yellow
    case red
    
    
    
    
    func selectedValueToString() -> String {
        
        switch self {
            
        case .green:
            return "green"
        case .yellow:
            return "yellow"
        case .red:
            return "red"
        }
        
        
    }
    
    
    func stringToSelectedValue(string: String) -> Completion {
        
        
        
        switch string {
        case "red":
            return .red
        case "yellow":
            return .yellow
        case "green":
            return .green
        default:
            return .red
        }
    }
    
}




struct Reminder: Identifiable {
    
    
    
    var id = UUID()
    var title: String
    
    var description: String
    
    var completion: Completion
    
    
    
    
    init(title: String, description: String, completion: Completion) {
        self.title = title
        self.completion = completion
        self.description = description
    }
    
    init() {
        self.title = "idle title"
        self.completion = .red
        self.description = "idle description"
        
    }
    
    
    
    
    
    
    
    
    
    
    
}




final class Datastore: ObservableObject, Identifiable {
    
    
    @Published var storeArray: [Reminder] = []
    
    
    
    
    init() {
        
        self.generateReminderPlaceholders()
    }
    
    
    
    func generateReminderPlaceholders()  {
        
        
        
        
        let placeholders: [Reminder] = [
            Reminder(title: "Meeting", description: "Discuss project progress", completion: .green),
            Reminder(title: "Call", description: "Call client for follow-up", completion: .yellow),
            Reminder(title: "Deadline", description: "Submit report by EOD", completion: .red)
        ]
        
        
        storeArray += placeholders
        
    }
    
    
    
    
}

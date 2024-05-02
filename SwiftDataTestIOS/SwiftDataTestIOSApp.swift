//
//  SwiftDataTestIOSApp.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 29.04.2024.
//

import SwiftUI

@main
struct SwiftDataTestIOSApp: App {
    
    var dataStore = Datastore()
    
    
    var body: some Scene {
        WindowGroup {
            
            ContentView(data: dataStore)
            
        }
    }
}

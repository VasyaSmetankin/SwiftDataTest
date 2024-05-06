//
//  Test.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 04.05.2024.
//

import SwiftUI

struct Test: View {
    
    @State var shiiieeet = false
    
    
    var body: some View {
        
        Button("tappp") {
            shiiieeet.toggle()
        }
        .sheet(isPresented: $shiiieeet, content: {
            test2()
        })
        

    }
}

#Preview {
    Test()
}

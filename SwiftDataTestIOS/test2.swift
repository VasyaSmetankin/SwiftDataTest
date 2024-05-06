//
//  test2.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 04.05.2024.
//

import SwiftUI

struct test2: View {
    
    
    @Environment (\.dismiss) var dismiss
    var body: some View {
        Text("test2")
            .onTapGesture {
                dismiss()
            }
    }
}

#Preview {
    test2()
}

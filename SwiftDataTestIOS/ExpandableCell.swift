//
//  ExpandableCell.swift
//  SwiftDataTestIOS
//
//  Created by Vasya Smetankin on 07.05.2024.
//

import SwiftUI



struct ExpandableCell: View {
    
    
    @State private var isDisclosed = false

    @State private var angle = 0.0
    var body: some View {
        VStack {
            HStack {
                
                Text("Title")

                Spacer()
                
                
                
                
                
                Image(systemName: "chevron.down")
                    .onTapGesture {
                        withAnimation {
                            isDisclosed.toggle()
                            angle = isDisclosed ? 180 : 0
                            
                        }
                    }
                    .rotationEffect(Angle(degrees: angle))

            }
            //.frame(height: chevronIsDown ? 50 : 150)
            //.border(Color.black)
        }
        
        
        .frame(height: isDisclosed ? 150 : 50, alignment: .top)
        .clipped()
        .border(Color.black)
        
    }
}

#Preview {
    ExpandableCell()
}

//
//  two.swift
//  Challenge 2 Demo
//
//  Created by Alvin Phyo Htet on 1/8/26.
//

import SwiftUI

struct two: View {
    var body: some View {
        VStack(alignment:.leading, spacing: 40) {
            
            Text("ABC Bank")
                .font(.largeTitle)
                .bold()
            
            
            
            HStack(spacing:1) {
                
                Text("$")
                Text("590.85")
                    .font(.system(size: 70))
                
            }
            
            
            Text("Current Balance")
                .font(.largeTitle)
            
            HStack {
                
                Rectangle()
                    .fill(.blue)
                    .frame(width: 140, height: 200)
                    .cornerRadius(15)
                    .overlay(
                        
                        Text("Daily income")
                            .foregroundStyle(.white)
                        
                        
                        
                    )
                
                
                Rectangle()
                    .fill(.blue)
                    .frame(width: 140, height: 200)
                    .cornerRadius(15)
                
                
                
            }
        }
        
        
    }
}

#Preview {
    two()
}

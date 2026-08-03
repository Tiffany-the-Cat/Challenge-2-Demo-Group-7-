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
            
            HStack {
                
                Text("Current Balance")
                    .font(.largeTitle)
                
                Menu("...") {
                    
                    Button {
                        print("Hello")
                    } label: {
                        Text("Add")
                        Text("Add Money")
                        Image(systemName: "creditcard.rewards.fill")
                        
                    }
                    
                    Button {
                        print("Clicked")
                    } label: {
                        Text("Withdraw")
                        Text("Withdraw Money")
                        Image(systemName: "creditcard.arrow.trianglehead.2.clockwise.rotate.90")

                    }
                    
                }
                
                
            }
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

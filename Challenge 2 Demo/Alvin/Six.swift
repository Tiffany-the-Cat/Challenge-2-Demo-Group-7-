//
//  Six.swift
//  Challenge 2 Demo
//
//  Created by Alvin Phyo Htet on 8/8/26.
//

import SwiftUI

struct Six: View {
    var body: some View {
        @State var is_claimed = false
        
        VStack {
            
            Image(systemName: "app.gift.fill")
                .font(.system(size: 150))
                .foregroundStyle(.blue)
            
            
            Button {
                print("Clicked")
                
                is_claimed = true
                
            } label: {
                
                if !is_claimed {
                    
                    Text("Claim")
                        .font(.largeTitle)
                        .padding()
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(.rect(cornerRadius: 10))
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 10)
                    
                } else if is_claimed {
                    Text("Claimed")
                        .font(.largeTitle)
                        .padding()
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(.rect(cornerRadius: 10))
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 10)
                }
            }
        }
        
    }
}

#Preview {
    Six()
}

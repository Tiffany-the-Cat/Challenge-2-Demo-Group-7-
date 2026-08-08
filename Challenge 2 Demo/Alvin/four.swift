//
//  four.swift
//  Challenge 2 Demo
//
//  Created by Alvin Phyo Htet on 7/8/26.
//

import SwiftUI

struct four: View {
    
    @State var url = "Youtube.com"

    
    var body: some View {
        Text(url)
            .bold()
            .font(.largeTitle)
            .padding()
            .border(Color.black, width:2)
        
        Button {
            print("Clicked")
            UIPasteboard.general.string = url
      
          
            
            
            
            
            
        } label: {
            
           Text("Copy")
        }
        
            
    }
}

#Preview {
    four()
}

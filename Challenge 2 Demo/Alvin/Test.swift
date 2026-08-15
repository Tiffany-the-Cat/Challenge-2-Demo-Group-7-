//
//  Test.swift
//  Challenge 2 Demo
//
//  Created by Alvin Phyo Htet on 15/8/26.
//

import SwiftUI

struct Test: View {
    @State private var people = [Person]()
    
    var body: some View {
        
        VStack {
                    List(people) { person in
                        HStack(spacing: 20) {
                            Text(person.first)
                            
                            Spacer()
                            
                            Text(person.last)
                        }
                    }
                }
                .onAppear {
                    people = decode("people.json")
                }
        
    }
}

#Preview {
    Test()
}

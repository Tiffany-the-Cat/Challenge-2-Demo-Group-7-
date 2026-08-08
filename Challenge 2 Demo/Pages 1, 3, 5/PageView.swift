//
//  Main135.swift
//  Challenge 2 Demo
//
//  Created by Tiffany Lim on 1/8/26.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        TabView {
            Tab {
                Text("Page 1")
                    .font(.system(size: 35))
            } label: {
                Image(systemName: "1.calendar")
            }
            Tab {
                Text("Page 3")
                    .font(.system(size: 35))
            } label: {
                Image(systemName: "3.calendar")
            }
            Tab {
                Text("Page 5")
                    .font(.system(size: 35))
            } label: {
                Image(systemName: "5.calendar")
            }
        }
    }
}

#Preview {
    PageView()
}

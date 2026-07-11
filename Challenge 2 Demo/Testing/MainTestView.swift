//
//  MainTestView.swift
//  Challenge 2 Demo
//
//  Created by Tiffany Lim on 4/7/26.
//

import SwiftUI

struct MainTestView: View {
    var body: some View {
        TabView {
            Tab {
                Text("Page 1")
                    .font(.system(size: 35))
            } label: {
                Image(systemName: "1.calendar")
            }
            Tab {
                Text("Page 2")
                    .font(.system(size: 35))            } label: {
                Image(systemName: "2.calendar")
            }
            Tab {
                Text("Page 3")
                    .font(.system(size: 35))
            } label: {
                Image(systemName: "3.calendar")
            }
        }
    }
}

#Preview {
    MainTestView()
}

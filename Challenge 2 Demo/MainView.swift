//
//  ContentView.swift
//  Challenge 2 Demo
//
//  Created by Tiffany Lim on 4/7/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color.brown
                .ignoresSafeArea()
            VStack {
                Text("Tiffany & Alvin's")
                    .foregroundStyle(.black)
                    .font(.system(size: 30, weight: .bold))
                Text("Challenge 2 Demo!")
                    .foregroundStyle(.black)
                    .font(.system(size: 30, weight: .bold))
            }
            .padding()
        }
    }
}

#Preview {
    MainView()
}

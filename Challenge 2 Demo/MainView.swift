//
//  ContentView.swift
//  Challenge 2 Demo
//
//  Created by Tiffany Lim on 4/7/26.
//

import SwiftUI

struct MainView: View {
    @State public var thisPage : PageNames = .Profile
    var body: some View {
        NavigationStack {
            HomeView(thisPage: $thisPage)
                .fullScreenCover(isPresented: Binding(
                    get: { thisPage == .Profile },
                    set: { incomplete in
                        if !incomplete {thisPage = .Home}}
                )) {
                    ProfileView(thisPage: $thisPage)
                }
        }
    }
}

#Preview {
    MainView()
}

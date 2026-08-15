//
//  HistoryView.swift
//  Challenge 2 Demo
//
//  Created by Tiffany Lim on 8/8/26.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Past Orders")
                .font(.system(size: 35, weight: .bold))
                .padding(.vertical, 10)
            List {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Golden Pearl Milk Tea")
                            .font(.system(size: 23, weight: .bold))
                            .lineLimit(1)
                            .truncationMode(.tail)
                        Text("15/8/26")
                            .font(.system(size: 20))
                    }
                    Text("Medium, Less Sugar, 1x Extra Pearls, 2x Chocolate Chips...")
                        .font(.system(size: 20))
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("Strawberry Matcha Latte")
                            .font(.system(size: 23, weight: .bold))
                            .lineLimit(1)
                            .truncationMode(.tail)
                        Text("13/8/26")
                            .font(.system(size: 20))
                    }
                    Text("Large, No Ice, 2x Diced Fruit")
                        .font(.system(size: 20))
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("Taro Frappuchino")
                            .font(.system(size: 23, weight: .bold))
                            .lineLimit(1)
                            .truncationMode(.tail)
                        Text("9/8/26")
                            .font(.system(size: 20))
                    }
                    Text("Small, No Sugar, 1x Milk Pudding")
                        .font(.system(size: 20))
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
            }
            .listStyle(.plain)
            .scrollDisabled(true)
            .scrollContentBackground(.hidden)
            .padding(.horizontal, 5)
            
        }
        .padding()
    }
}
#Preview {
    HistoryView()
}

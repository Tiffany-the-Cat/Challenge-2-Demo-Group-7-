//
//  PurchaseView.swift
//  Challenge 2 Demo
//
//  Created by Tiffany Lim on 8/8/26.
//

import SwiftUI

struct PurchaseView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Order Summary")
                .font(.system(size: 35, weight: .bold))
                .padding(.top, 10)
            Divider()
                .frame(height: 1)
                .overlay(.black.opacity(0.3))
                .padding(10)
            Text("Golden Pearl Milk Tea")
                .font(.system(size: 27, weight: .bold))
            Text("Price: $5.50")
                .font(.system(size: 25))
            Text("Size: 2 (Medium)")
                .font(.system(size: 25))
            Text("Edits")
            .font(.system(size: 25))
            .padding(.vertical, 10)
            Divider()
                .frame(height: 1)
                .overlay(.black.opacity(0.3))
                .padding(.horizontal, 10)
            LazyVStack(alignment: .leading) {
                    Text("Less Sugar")
                        .font(.system(size: 25))
                    Text("1x Extra Pearls")
                            .font(.system(size: 25))
                    Text("2x Chocolate Chips")
                        .font(.system(size: 25))
            }
            .padding()
            Divider()
                .frame(height: 1)
                .overlay(.black.opacity(0.3))
                .padding(.horizontal, 10)
        }
        .padding()
        Button {
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.blue.opacity(0.7))
                RoundedRectangle(cornerRadius: 30)
                    .stroke(.blue, lineWidth: 5)
                Text("Continue to Payment")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
            } .frame(width: 250, height: 40)
            
        }.padding(20)
        Spacer()
    }
}

#Preview {
    PurchaseView()
}

//
//  Str-Int-ProfileView.swift
//  Challenge 2 Demo
//
//  Created by Tiffany Lim on 1/8/26.
//

import SwiftUI

struct AgeField: View {
    @State var age : Int = 0
    var body: some View {
        HStack {
            Text("Age:")
                .font(.system(size: 25))
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(colAlpha(r: 0, g: 0, b: 0, a: 0.1))
                    .frame(width: 50, height: 30)
                Picker("from", selection: $age){
                    ForEach(1..<30) { x in
                        Text("\(x)")
                            .tag(x)
                    }
                }
                .fixedSize()
                .tint(.black)
            }
            Text("years old")
                    .font(.system(size: 25))
        }
    }
}

struct UserField: View {
    @State var username : String = ""
    var body: some View {
        HStack {
            Text("Username:")
                .font(.system(size: 25))
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundStyle(colAlpha(r: 0, g: 0, b: 0, a: 0.1))
                    .frame(width: 170, height: 30)
                TextField("Enter username", text: $username)
                    .textFieldStyle(.plain)
                    .scaledToFit()
                    .padding()
            }
        }
    }
}

struct ProfileView: View {
    @Binding public var thisPage : PageNames
    var body: some View {
        VStack {
            Text("New Profile")
                .font(.system(size: 35, weight: .bold))
                .padding()
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.blue)
                .frame(width: 70)
            //.padding(.top, 10)
                .padding(20)
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(colAlpha(r: 0, g: 0, b: 0, a: 0.1))
                    .frame(width: 350)
                VStack(alignment: .leading) {
                    UserField()
                    AgeField()
                } .padding(10)
            } .scaledToFit()
            Button {
                thisPage = .Home
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundStyle(.blue.opacity(0.7))
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.blue, lineWidth: 5)
                    Text("Create User")
                        .foregroundStyle(.white)
                        .font(.system(size: 25))
                } .frame(width: 150, height: 40)
                
            }.padding(20)
            Spacer()
        }
    }
}

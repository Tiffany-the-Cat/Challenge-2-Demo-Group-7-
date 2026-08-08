//
//  two.swift
//  Challenge 2 Demo
//
//  Created by Alvin Phyo Htet on 1/8/26.
//

import SwiftUI

struct two: View {
    var body: some View {
        VStack(alignment:.leading, spacing: 40) {
            
            Text("ABC Bank")
                .font(.largeTitle)
                .bold()
            
            
            
            HStack(spacing:1) {
                
                Text("$")
                Text("590.85")
                    .font(.system(size: 70))
                
            }
            
            HStack {
                
                Text("Current Balance")
                    .bold()
                    .font(.largeTitle)
                
                Menu("...") {
                    
                    Button {
                        print("Hello")
                    } label: {
                        Text("Add")
                        Text("Add Money")
                        Image(systemName: "creditcard.rewards.fill")
                        
                    }
                    
                    Button {
                        print("Clicked")
                    } label: {
                        Text("Withdraw")
                        Text("Withdraw Money")
                        Image(systemName: "creditcard.arrow.trianglehead.2.clockwise.rotate.90")
                        
                    }
                    
                }
                
                
            }
            
            
            
            HStack {
                
                Rectangle()
                    .fill(.blue)
                    .frame(width: 140, height: 200)
                    .cornerRadius(15)
                    .overlay(
                        ZStack {
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Daily income")
                                        .foregroundStyle(.white)
                                    
                                    
                                    Menu {
                                        
                                        Button {
                                            print("Clicked")
                                        } label: {
                                            
                                            Text("Withdraw")
                                            Text("Withdraw Money")
                                            Image(systemName: "creditcard.arrow.trianglehead.2.clockwise.rotate.90")
                                            
                                        }
                                        
                                    } label: {
                                        Text("...")
                                            .foregroundStyle(.white)
                                            .offset(y: -3)
                                    }
                                    
                                }
                                
                                
                                Text("32%")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .opacity(0.5)
                                
                                
                                
                                Rectangle()
                                    .fill(.white)
                                    .frame(width: 130,height: 90)
                                    .cornerRadius(15)
                                    .offset(y: 8)
                                    .overlay(
                                        
                                        ZStack {
                                            
                                            VStack(alignment: .leading) {
                                                
                                                Text("My Balance")
                                                    .opacity(0.5)
                                                
                                                HStack {
                                                    Text("$")
                                                        .font(.title3)
                                                    Text("12,920.")
                                                        .font(.title3)
                                                    Text("00")
                                                        .font(.title3)
                                                        .offset(x: -7)
                                                        .opacity(0.5)
                                                    
                                                }
                                            }
                                            
                                        }
                                        
                                        
                                    )
                                
                                
                            }
                            
                        }
                    )
                
                
                Rectangle()
                    .fill(.blue)
                    .frame(width: 140, height: 200)
                    .cornerRadius(15)
                    .overlay(
                        
                        ZStack {
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Spending")
                                        .foregroundStyle(.white)
                                    
                                    
                                    Menu {
                                        
                                        Button {
                                            print("Clicked")
                                        } label: {
                                            
                                            Text("Withdraw")
                                            Text("Withdraw Money")
                                            Image(systemName: "creditcard.arrow.trianglehead.2.clockwise.rotate.90")
                                            
                                        }
                                        
                                    } label: {
                                        Text("...")
                                            .foregroundStyle(.white)
                                            .offset(y: -3)
                                    }
                                    
                                }
                                
                                
                                Text("21%")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .opacity(0.5)
                                
                                
                                
                                Rectangle()
                                    .fill(.white)
                                    .frame(width: 130,height: 90)
                                    .cornerRadius(15)
                                    .offset(y: 8)
                                    .overlay(
                                        
                                        ZStack {
                                            
                                            VStack(alignment: .leading) {
                                                
                                                Text("Spending")
                                                    .opacity(0.5)
                                                
                                                HStack {
                                                    Text("$")
                                                        .font(.title3)
                                                    Text("8,205.")
                                                        .font(.title3)
                                                    Text("00")
                                                        .font(.title3)
                                                        .offset(x: -7)
                                                        .opacity(0.5)
                                                    
                                                }
                                            }
                                            
                                        }
                                        
                                        
                                    )
                                
                                
                            }
                            
                        }
                        
                    )
                
                
                
            }
            
            Text("Transactions History")
                .bold()
                .font(.title)
            
            HStack {
                
       
                Image(systemName: "rectangle.portrait.and.arrow.right")
                    .font(.largeTitle)
                 
                
                VStack(alignment: .leading) {
                    
                    Text("To Albert")
                        .bold()
                        .font(.title2)
                    Text("9 May 2026 at 9:00AM")
                }
                
                
                
                Text("-$30.24")
                    .bold()
                    .font(.title3)
                
            }
            
        }
        
        
    }
}

#Preview {
    two()
}

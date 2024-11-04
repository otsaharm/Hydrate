//
//  progress page 3.swift
//  Hydrate
//
//  Created by Sahar Otiyn on 21/04/1446 AH.
//

import SwiftUI

struct ProgressPage1: View {
    @State private var value: Double = 0.0
    @Binding var recommendedIntake: Double
    
    
    var body: some View {
        VStack {
            Text("Today's Water Intake")
                .foregroundColor(.gray)
                .font(.system(size: 16))
                .font(.headline)
                .padding(.leading, -190)
                .padding(.bottom, 0)
            
            HStack {
                Text("\(String(format: "%.1f", recommendedIntake)) liter / 2.7 liter")
                    .fontWeight(.bold)
                    .font(.system(size: 22))
                    .padding(.bottom, 9)
                    .padding(.leading, -185)
            }
            
            VStack {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 25)
                        .foregroundColor(Color.gray.opacity(0.2))
                        .frame(width: 300, height: 300)
                    
                    Circle()
                        .trim(from: 0, to: CGFloat(value / 2.7))
                        .stroke(Color.cyan, lineWidth: 27)
                        .rotationEffect(.degrees(-90))
                        .frame(width: 300, height: 300)
                    
                    
                    if value == 0 {
                        Image(systemName: "zzz")
                            .resizable()
                            .foregroundColor(Color.yellow)
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    } else if value >= 0.1 && value < 0.6 {
                        Image(systemName: "tortoise")
                            .resizable()
                            .foregroundColor(Color.yellow)
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    } else if value >= 0.6 && value < 2.7 {
                        Image(systemName: "hare")
                            .resizable()
                            .foregroundColor(Color.yellow)
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    } else if value >= 2.7 {
                        Image(systemName: "hands.clap.fill")
                            .resizable()
                            .foregroundColor(Color.yellow)
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                }
                
                Text("\(String(format: "%.1f", value)) L")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
//                Stepper("", value: $value, in: 0...recommendedIntake, step: 0.1)
                
                
                // Adjusting buttons
                HStack {
                    Button(action: {
                        if value > 0 { value = 0.0 }
                    }) {
                        Image(systemName: "minus")
                            .frame(width: 40, height: 30)
                            .background(Color.gray.opacity(0.19))
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        if value < 2.7 { value += 0.1 }
                    }) {
                        Image(systemName: "plus")
                            .frame(width: 40, height: 30)
                            .background(Color.gray.opacity(0.19))
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
            .onAppear{
//                recommendedIntake = weight * 0.03
            }
        }
    }
}

#Preview {
    ProgressPage1(recommendedIntake: .constant(8))
}

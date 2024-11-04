//
//  ContentView.swift
//  Hydrate
//
//  Created by Sahar Otiyn on 16/04/1446 AH.
//
import SwiftUI

struct ContentView: View {
    @State private var bodyWeight: String = ""
    @State private var recommendedIntake: Double = 0.0
    @State private var showSplash = true
    
    var body: some View {
        ZStack {
            if showSplash {
                SplashScreen()
                    .transition(.opacity)
                    .animation(
                        .easeOut(duration:1.5))
             } else {
NavigationView {
                    
                    VStack(spacing: 10) {
                        Spacer()
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .padding(.leading,-190)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.cyan)
                            .padding(.horizontal)
                            .padding(.top, 10)
                            .padding(.bottom, -10)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            
                            Text("Hydrate")
                                .multilineTextAlignment(.leading)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.top, 10)
                                .padding(.leading,10)
                            
                            Text("Start with Hydrate to record and track your water intake daily based on your needs and stay hydrated")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                                .padding(.horizontal)
                                .padding(.top, 10)
                                .padding(.bottom, 00)
                        }
                        HStack {
                            Text("body Weight")
                                .foregroundColor(.black)
                            
                            TextField("Value", text: $bodyWeight)
                                .keyboardType(.decimalPad)
                                .foregroundColor(.black)
                            if !bodyWeight.isEmpty {
                                Button(action: {
                                    bodyWeight = ""
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.gray)
                                }
                                
                            }
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(5)
                        .padding(.horizontal,10)
                        
                        
                        
                        Spacer()
                        
                        Button(action: {
                        }) {
                            
                            NavigationLink(destination:notice_page(recommendedIntake: $recommendedIntake).navigationBarBackButtonHidden(true))
                            {
                                Text("**Next**")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.cyan)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.cyan)
                                        
                                    )
                                    .onChange(of: bodyWeight) { oldValue, newValue in
                                        recommendedIntake =  Double(bodyWeight) ?? 0 * 0.03
                                    }
                                
                            }            .navigationBarBackButtonHidden(true)
                            
                                .padding(.top, 20)
                        }
                        .padding()
                    }
                    .padding()
                }
            
                            }
                            
                        }    .onAppear {
                            DispatchQueue.main
                                .asyncAfter(deadline: .now() + 3) {
                                    withAnimation {
                                        self.showSplash = false
                }
            }
            
        }
    }
}

    #Preview {
        ContentView()
    }
        
    


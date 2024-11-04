//
//  splach screen .swift
//  Hydrate
//
//  Created by Sahar Otiyn on 30/04/1446 AH.
//
import SwiftUI
struct SplashScreen: View {
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
                Text("You Must Hydrate Your Body")
                .font(.custom("times new roman", size: 40))
                .multilineTextAlignment(.center)
                .fontWeight(.bold)
                .foregroundColor(.cyan)
                .foregroundColor(Color.b)
                .padding(.top,300)
                .shadow(radius: 2)

                .onAppear{
                    
                }
             
                    Image("bbb")
                        .resizable()
                        .padding(.top,20)
                            
                        
                        .frame(width:400 , height: 400)
                        .offset(x: 1, y: 10)
                        .rotationEffect(.degrees(0.1))
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .animation(.easeInOut)
                        .onAppear{
                        }
                        }
                }
        }
    
#Preview {
    SplashScreen()
}

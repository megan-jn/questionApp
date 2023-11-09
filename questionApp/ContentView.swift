//
//  ContentView.swift
//  questionApp
//
//  Created by Megan on 4/23/23.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var gameScore: GameScore
    
    let gradient = LinearGradient(colors: [Color.blue,Color.yellow], startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        NavigationStack {
            ZStack {
                gradient
                    .opacity(0.25)
                    .ignoresSafeArea()
                
                VStack {
                    Text("WELCOME TO")
                        .font(Font.custom("Montserrat-Medium", size: 40))
                        
                    Text("PRICE I$ RIGHT")
                        .font(Font.custom("ClimateCrisis-Regular", size: 64))
                        .multilineTextAlignment(.center)

                    Text("REAL ESTATE EDITION")
                        .font(Font.custom("Montserrat-Medium", size: 28))
                        .multilineTextAlignment(.center)
                
//                    Spacer()
                }
                .padding()
//                .navigationTitle("HOME")
                .font(.largeTitle)
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: SecondView()) {
                            Text("START")
                                .font(Font.custom("ClimateCrisis-Regular", size: 40))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0, green: 0, blue: 0))
                                .shadow(color: .gray, radius: 3, x: 0, y: 5)
                        }
                    }
                }
               
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

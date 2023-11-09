//
//  SecondView.swift
//  questionApp
//
//  Created by Megan on 4/23/23.
//

import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject var gameScore: GameScore
    
    let gradient = LinearGradient(colors: [Color.blue,Color.green], startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        NavigationStack {
            ZStack{
                gradient
                    .opacity(0.25)
                    .ignoresSafeArea()
                
                VStack{
                    Text("GUESS THAT")
                        .font(Font.custom("Montserrat-Medium", size: 40))
                        .multilineTextAlignment(.center)
                    Text("PRICE!")
                        .font(Font.custom("ClimateCrisis-Regular", size: 40))
                    
                    Image("h1a")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                    
                    //                    Image("h1b")
                    //                        .resizable()
                    //                        .aspectRatio(contentMode: .fit)
                    //                        .cornerRadius(15)
                    
                    Text("Features: ")
                        .font(Font.custom("Montserrat-Bold", size: 24))
                    
                    Text("•\t7 bd, 9 ba\n•\t11,635 sqft\n•\tlocated in San Francisco, CA")
                        .font(Font.custom("Montserrat-medium", size: 20))
                    
                    Button("$5M") {
                        gameScore.score += 0
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .font(Font.custom("Montserrat-Bold", size: 26))
                    Button("$27M") {
                        gameScore.score += 0
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .font(Font.custom("Montserrat-Bold", size: 26))
                    Button("$35M") {
                        gameScore.score += 1
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .font(Font.custom("Montserrat-Bold", size: 26))
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: ThirdView()) {
                            Text("NEXT")
                                .font(Font.custom("ClimateCrisis-Regular", size: 28))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                                .shadow(color: .gray, radius: 3, x: 0, y: 5)
                                .padding()
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .environmentObject(GameScore())
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

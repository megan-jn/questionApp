//
//  ResultView.swift
//  questionApp
//
//  Created by Megan on 4/23/23.
//

import SwiftUI

struct ResultView: View {
    
    @EnvironmentObject var gameScore: GameScore
    
    @State private var showText = true
    
    let gradient = LinearGradient(colors: [Color.yellow,Color.purple], startPoint: .top, endPoint: .bottom)
    
//    @State private var result = ""
    
    var body: some View {
        NavigationStack {
            ZStack{
                gradient
                    .opacity(0.25)
                    .ignoresSafeArea()
                
                VStack{
                    if gameScore.score == 3 && showText {
//                        result = "YAY, YOU DID IT!"
                        Text("YAY, YOU DID IT!")
                            .font(Font.custom("RobotoMono-Medium", size: 30))
                            .multilineTextAlignment(.center)
                    } else if gameScore.score == 2 && showText == true{
//                        result = "AWW, SO CLOSE!"
                        Text("AWW, SO CLOSE!")
                            .font(Font.custom("RobotoMono-Medium", size: 30))
                            .multilineTextAlignment(.center)
//                        showText.toggle()
                    } else if gameScore.score < 2 && showText == true {
//                        result = "😔 might wanna start browsing through Zillow more"
                        Text("😔 might wanna start browsing through Zillow more")
                            .font(Font.custom("RobotoMono-Medium", size: 30))
                            .multilineTextAlignment(.center)
//                        showText.toggle()
                    }

                    Text("Score:")
                        .font(Font.custom("Montserrat-Bold", size: 28))
                        .padding()
                    Text("\(gameScore.score)")
                        .font(Font.custom("ClimateCrisis-Regular", size: 36))
                    Text("out of")
                        .font(Font.custom("RobotoMono-Medium", size: 26))
                        .padding()
                    Text("3")
                        .font(Font.custom("ClimateCrisis-Regular", size: 36))
                        .padding()
                    
                    Text("Please reset score before playing again: ")
                        .font(Font.custom("RobotoMono-Medium", size: 18))
                        .multilineTextAlignment(.center)
                    Button("RESET SCORE") {
                        gameScore.score = 0
                    }
                    .padding()
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    
                }
                
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: ContentView()) {
                            Text("PLAY AGAIN")
                                .font(Font.custom("ClimateCrisis-Regular", size: 36))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                                .shadow(color: .gray, radius: 3, x: 0, y: 5)
                        }
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
        .environmentObject(GameScore())
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}

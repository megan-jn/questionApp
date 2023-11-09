//
//  FourthView.swift
//  questionApp
//
//  Created by Megan on 4/23/23.
//

import SwiftUI

struct FourthView: View {
    @EnvironmentObject var gameScore: GameScore
    
    let gradient = LinearGradient(colors: [Color.red,Color.blue], startPoint: .top, endPoint: .bottom)
    
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
                    
                    Image("h3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding()
                    
                    Text("Features: ")
                        .font(Font.custom("Montserrat-Bold", size: 24))
                    
                    Text("•\t5 bd, 4 ba\n•\t7,052 sqft\n•\tlocated in Salt Lake City, UT")
                        .font(Font.custom("Montserrat-medium", size: 20))
                    
                    Button("$2.5M") {
                        gameScore.score += 1
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .font(Font.custom("Montserrat-Bold", size: 26))
                    Button("$3.5M") {
                        gameScore.score += 0
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .font(Font.custom("Montserrat-Bold", size: 26))
                    Button("$23M") {
                        gameScore.score += 0
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .font(Font.custom("Montserrat-Bold", size: 26))
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: ResultView()) {
                            Text("NEXT")
                                .font(Font.custom("ClimateCrisis-Regular", size: 28))
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

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}

//
//  ThirdView.swift
//  questionApp
//
//  Created by Megan on 4/23/23.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var gameScore: GameScore
    
    let gradient = LinearGradient(colors: [Color.green,Color.orange], startPoint: .top, endPoint: .bottom)
    
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
                    
                    Image("h2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding()
                    
                    Text("Features: ")
                        .font(Font.custom("Montserrat-Bold", size: 24))
                    
                    Text("•\t6 bd, 6 ba\n•\t3,541 sqft\n•\tlocated in Palo Alto, CA")
                        .font(Font.custom("Montserrat-medium", size: 20))
                    
                    Button("$5.98M") {
                        gameScore.score += 1
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .font(Font.custom("Montserrat-Bold", size: 26))
                    Button("$7.2M") {
                        gameScore.score += 0
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .font(Font.custom("Montserrat-Bold", size: 26))
                    Button("$8M") {
                        gameScore.score += 0
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .font(Font.custom("Montserrat-Bold", size: 26))
                }
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: FourthView()) {
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

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

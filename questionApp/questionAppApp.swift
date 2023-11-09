//
//  questionAppApp.swift
//  questionApp
//
//  Created by Megan on 4/23/23.
//

import SwiftUI

@main
struct questionAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(GameScore())
        }
//        SecondView()
//            .environmentObject(GameScore())
//        ThirdView()
//            .environmentObject(GameScore())
//        FourthView()
//            .environmentObject(GameScore())
//        ResultView()
//            .environmentObject(GameScore())
    }
}

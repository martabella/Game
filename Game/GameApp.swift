//
//  GameApp.swift
//  Game
//
//  Created by Marta Bella on 25/11/24.
//

import SwiftUI

@main
struct GameApp: App {
    @StateObject var gameStore = GameStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(gameStore)
        }
    }
}

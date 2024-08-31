//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Adam Elfsborg on 2024-08-31.
//

import SwiftUI


@Observable
class Player {
    var name = "Anonymous"
    var highScore = 0
}

struct HighScoreView: View {
    @Environment(Player.self) var player
    var body: some View {
        @Bindable var player = player
        
        Stepper("High score: \(player.highScore)", value: $player.highScore)
    }
}

struct ContentView: View {
    @State private var player = Player()
    
    var body: some View {
        VStack {
            Text("Welcome")
            HighScoreView()
            Text("Highscore: \(player.highScore)")
        }
        .environment(player)
        
    }
}

#Preview {
    ContentView()
}

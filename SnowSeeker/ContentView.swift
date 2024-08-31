//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Adam Elfsborg on 2024-08-31.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    var name: String
}

struct ContentView: View {
    @State private var selected: User? = nil
    
    var body: some View {
        Button("Tapp me") {
            selected = User(name: "Adam")
        }
        .sheet(item: $selected) { user in
            Text(user.name)
                .presentationDetents([.medium, .large])
        }
    }
}

#Preview {
    ContentView()
}

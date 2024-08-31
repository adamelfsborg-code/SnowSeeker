//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Adam Elfsborg on 2024-08-31.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Adam")
            Text("Country: Sweden")
            Text("Pets: No pets")
        }
        .font(.title)
    }
}

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .compact {
            VStack(content: UserView.init)
        } else {
            HStack(content: UserView.init)
        }
        
        
    }
}

#Preview {
    ContentView()
}

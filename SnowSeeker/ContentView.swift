//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Adam Elfsborg on 2024-08-31.
//

import SwiftUI

struct ContentView: View {
    @State private var searchTerm = ""
    
    let names = ["Marcus Aurelius", "Seneca", "Zeno of Citium", "Zeno of tarsus", "Epictetus", "Claudius Maximus"]
    
    var filteredNames: [String] {
        if searchTerm.isEmpty {
            return names
        }
        
        return names.filter { $0.localizedStandardContains(searchTerm)}
    }
    
    var body: some View {
        NavigationStack {
            List(filteredNames, id: \.self) { stoic in
                Text(stoic)
            }
                .searchable(text: $searchTerm, prompt: "Search for something")
                .navigationTitle("Search")
        }
    }
}

#Preview {
    ContentView()
}

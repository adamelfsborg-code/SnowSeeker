//
//  Facility.swift
//  SnowSeeker
//
//  Created by Adam Elfsborg on 2024-09-02.
//

import SwiftUI

struct Facility: Identifiable {
    let id = UUID()
    var name: String
    
    
    private let icons = [
        "Accomodation": "house",
        "Beginners": "1.circle",
        "Cross-country": "map",
        "Eco-friendly": "leaf.arrow.cirlcepath",
        "Family": "person.3"
    ]
    
    private let descriptions = [
        "Accomodation": "This resort has popular on-site accomadations.",
        "Beginners": "This resort has lots of ski schools.",
        "Cross-country": "This resort has many cross-country ski routes.",
        "Eco-friendly": "This resort has won an award for environment friendliness.",
        "Family": "This resort is popular with families."
    ]
    
    
    var icon: some View {
        if let iconName = icons[name] {
            return Image(systemName: iconName)
                .accessibilityLabel(name)
                .foregroundStyle(.secondary)
        } 
        fatalError("Unkown facility type: \(name)")
    }
    
    var description: String {
        if let message = descriptions[name] {
            return message
        }
        fatalError("Unkown facility description: \(name)")
    }
}

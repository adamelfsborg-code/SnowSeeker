//
//  SkiDetailsView.swift
//  SnowSeeker
//
//  Created by Adam Elfsborg on 2024-09-01.
//

import SwiftUI

struct SkiDetailsView: View {
    let resort: Resort
    
    var body: some View {
        Group {
            VStack {
                Text("Elevaton")
                    .font(.caption.bold())
                Text("\(resort.elevation)m")
                    .font(.title3)
            }
            VStack {
                Text("Snow")
                    .font(.caption.bold())
                Text("\(resort.snowDepth)cm")
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SkiDetailsView(resort: Resort.example)
}

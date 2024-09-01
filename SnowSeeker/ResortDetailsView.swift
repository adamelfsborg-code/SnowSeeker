//
//  ResortDetailsView.swift
//  SnowSeeker
//
//  Created by Adam Elfsborg on 2024-09-01.
//

import SwiftUI

struct ResortDetailsView: View {
    let resort: Resort
    
    var body: some View {
        Group {
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text(resort.sizeSymbol)
                    .font(.title3)
            }
            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(resort.priceSymbol)
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ResortDetailsView(resort: Resort.example)
}

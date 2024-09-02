//
//  Resort.swift
//  SnowSeeker
//
//  Created by Adam Elfsborg on 2024-09-01.
//

import Foundation

struct Resort: Codable, Identifiable, Hashable {
    var id: String
    var name: String
    var country: String
    var description: String
    var imageCredit: String
    var price: Int
    var size: Int
    var snowDepth: Int
    var elevation: Int
    var runs: Int
    var facilities: [String]
    
    var facilityTypes: [Facility] {
        facilities.map(Facility.init)
    }
    
    var sizeSymbol: String {
        switch self.size {
        case 1: "Small"
        case 2: "Average"
        default: "Large"
        }
    }
    
    var priceSymbol: String {
        return String(repeating: "$", count: self.price)
    }
    
    static let resorts: [Resort] = Bundle.main.decode("resorts.json")
    static let firstResort = resorts[0]
    static let example = resorts.randomElement() ?? firstResort
}

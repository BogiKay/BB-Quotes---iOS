//
//  Constants.swift
//  BB Quotes
//
//  Created by Bogusz Kaszowski on 13/05/2024.
//

import Foundation

enum Constants {
    static let bbName = "Breaking Bad"
    static let bcsName = "Better Call Saul"
    
}

extension String {
    var replaceSpaceWithPlus: String {
        self.replacingOccurrences(of: " ", with: "+")
    }
    
    var noSpaces: String {
        self.replacingOccurrences(of: " ", with: "")
    }
    
    var lowerNoSpace: String {
        self.noSpaces.lowercased()
    }
}

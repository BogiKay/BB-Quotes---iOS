//
//  Constants.swift
//  BB Quotes
//
//  Created by Bogusz Kaszowski on 13/05/2024.
//

import Foundation

extension String {
    var replaceSpaceWithPlus: String {
        self.replacingOccurrences(of: " ", with: "+")
    }
}

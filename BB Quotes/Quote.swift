//
//  Quote.swift
//  BB Quotes
//
//  Created by Bogusz Kaszowski on 13/05/2024.
//

import Foundation

struct Quote: Decodable {
    let quote: String
    let character: String
    let production: String
}

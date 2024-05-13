//
//  Character.swift
//  BB Quotes
//
//  Created by Bogusz Kaszowski on 13/05/2024.
//

import Foundation

struct Character: Decodable {
    let name: String
    let birthday: String
    let occupations: [String]
    let images: [URL]
    let aliases: [String]
    let portrayedBy: String
}

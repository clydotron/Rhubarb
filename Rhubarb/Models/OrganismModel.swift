//
//  OrganismModel.swift
//  Rhubarb
//
//  Created by Brian Green on 5/15/21.
//

import SwiftUI

struct Organism: Codable, Identifiable {
    let id: String?
    let name: String
    let fancy: String
    let taxonomy: Taxonomy
    let description: String
    let habitat: String
    let diet: String
    let funFacts: String
    let distribution: String
    let gallery: [String]
    let thumbnail: String
}

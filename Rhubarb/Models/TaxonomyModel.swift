//
//  TaxonomyModel.swift
//  Rhubarb
//
//  Created by Brian Green on 5/15/21.
//

import SwiftUI

struct Taxonomy: Codable, Identifiable {
    
    var id: Int?
    
    let kingdom: String
    let phylum: String
    let class_t: String
    let order: String
    let family: String
    let genus: String
    let species: String
    
    
    enum CodingKeys: String, CodingKey {
        case kingdom, phylum, order, family, genus, species
        // Map the JSON key "class" to the Swift property name "class_t"
        case class_t = "class"
    }

}

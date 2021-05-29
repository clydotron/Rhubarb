//
//  CodableBundleExtension.swift
//  Rhubarb
//
//  Created by Brian Green on 5/15/21.
//

import SwiftUI


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 2. Create property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle.")
        }
        // 3. create the decoder
        let decoder = JSONDecoder()
        
        // 4. create property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 5. return the ready-to-use data
        return loaded
    }
}


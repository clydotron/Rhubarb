//
//  InsetHabitatView.swift
//  Rhubarb
//
//  Created by Brian Green on 5/15/21.
//

import SwiftUI

struct InsetHabitatView: View {
    // MARK: - PROPERTIES
    let habitat: String
    // MARK: - BODY
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: - PREVIEW

struct InsetHabitatView_Previews: PreviewProvider {
    static var previews: some View {
        InsetHabitatView(habitat: organisms[0].habitat)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

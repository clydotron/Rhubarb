//
//  OrganismListItemView.swift
//  Rhubarb
//
//  Created by Brian Green on 5/15/21.
//

import SwiftUI

struct OrganismListItemView: View {
    
    // MARK: - PROPERTIES
    
    let organism: Organism
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 3 ) {
            Image(organism.thumbnail)
                .resizable()
                .frame(width:48, height:48)
            
            Text(organism.name)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }

        
    }
}

struct OrganismListItemView_Previews:
    
    PreviewProvider {
    
    static var previews: some View {
        OrganismListItemView(organism: organisms[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  OrganismListView.swift
//  Rhubarb
//
//  Created by Brian Green on 5/15/21.
//

import SwiftUI

struct OrganismListView: View {
    
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(organisms) { item in
                    NavigationLink(
                        destination: OrganismDetailView(organism:item)) {
                       
                        OrganismListItemView(organism:item)
                    }
                }
            }
        }
    }
}

struct OrganismListView_Previews: PreviewProvider {
    static var previews: some View {
        OrganismListView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

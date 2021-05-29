//
//  OrganismDetailView.swift
//  Rhubarb
//
//  Created by Brian Green on 5/15/21.
//

import SwiftUI

struct OrganismDetailView: View {
    
    // MARK: - PROPERTIES
    
    let organism: Organism
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20 ) {
                    
                    // HERO IMAGE
                    Image(organism.gallery[0])
                        .resizable()
                        .scaledToFit()
                    
                    // NAME
                    VStack {
                        Text(organism.name)
                            .font(.title2)
                            .fontWeight(.heavy)
                        Text(organism.fancy)
                    }
                    // DESCRIPTION
                    Text(organism.description)
                        .font(.footnote)
                        .fontWeight(.regular)
                    
                    // FUN FACTS
                    InsetFunFactsView(funFacts: organism.funFacts)
                    
                    // GALLERY
                    InsetGalleryView(images: organism.gallery)
                    
                    // TAXONOMY
                    InsetTaxonomyView(taxonomy: organism.taxonomy)
                    
                    // HABITAT
                    InsetHabitatView(habitat: organism.habitat)
                    
                    // DIET
                } //: VSTACK
                .navigationBarTitle(organism.name,displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
            .padding(.horizontal,10)
        } //: NAV
        //.background(Color.red)
    

        
    }
}

// MARK: - PREVIEW
struct OrganismDetailView_Previews: PreviewProvider {

    static var previews: some View {
        OrganismDetailView(organism:organisms[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

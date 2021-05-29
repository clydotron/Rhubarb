//
//  TaxonomyView.swift
//  Rhubarb
//
//  Created by Brian Green on 5/15/21.
//

import SwiftUI

struct InsetTaxonomyView: View {
    
    // MARK: - PROPERTIES
    
    let taxonomy: Taxonomy
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Taxonomy") {
                VStack(alignment: .leading, spacing: 5 ) {
                    TaxonomyItemView(name:"Kingdom", value: taxonomy.kingdom)
                    TaxonomyItemView(name:"Phylum", value: taxonomy.phylum)
                    TaxonomyItemView(name:"Class", value: taxonomy.class_t)
                    TaxonomyItemView(name:"Order", value: taxonomy.order)
                    TaxonomyItemView(name:"Family", value: taxonomy.family)
                    TaxonomyItemView(name:"Genus", value: taxonomy.genus)
                    TaxonomyItemView(name:"Species", value: taxonomy.species)
                }
            }
        }
     
    }
}

// MARK: - PREVIEW
struct TaxonomyView_Previews: PreviewProvider {
    static var previews: some View {
        InsetTaxonomyView(taxonomy: organisms[0].taxonomy)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

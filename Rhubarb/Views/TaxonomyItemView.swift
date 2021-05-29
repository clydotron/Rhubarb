//
//  TaxonomyItemView.swift
//  Rhubarb
//
//  Created by Brian Green on 5/28/21.
//

import SwiftUI

struct TaxonomyItemView: View {
    let name: String
    let value: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(.title3)
                .fontWeight(.semibold)
            Spacer()
            Text(value)
                .font(.title3)
                .fontWeight(.regular)
        }
        .padding(.horizontal,10)
    }
}

struct TaxonomyItemView_Previews: PreviewProvider {
    static var previews: some View {
        TaxonomyItemView(name: "Kingdom", value: "Chromista")
    }
}

//
//  FunFactsView.swift
//  Rhubarb
//
//  Created by Brian Green on 5/15/21.
//

import SwiftUI

struct InsetFunFactsView: View {
    
    // MARK: - PROPERTIES
    
    let funFacts: String
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Fun facts") {
//                ForEach(facts, id: \.self) { fact in
//                    Divider().padding(.vertical,2)
//
//                    HStack {
                        Text(funFacts)
                   // }
               // }
            }
        }
    }
}

struct FunFactsView_Previews: PreviewProvider {

    static var previews: some View {
        InsetFunFactsView(funFacts: organisms[0].funFacts)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

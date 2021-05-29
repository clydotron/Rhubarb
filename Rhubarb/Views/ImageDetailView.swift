//
//  ImageDetailView.swift
//  Rhubarb
//
//  Created by Brian Green on 5/28/21.
//

import SwiftUI

struct ImageDetailView: View {
    let image: String
    
    var body: some View {
       Image(image)
        .resizable()
        .scaledToFit()
        
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(image: organisms[0].gallery[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

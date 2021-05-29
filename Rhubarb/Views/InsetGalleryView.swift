//
//  InsetGalleryView.swift
//  Rhubarb
//
//  Created by Brian Green on 5/28/21.
//

import SwiftUI

struct InsetGalleryView: View {
    
    // MARK: - PROPERTIES
    
    let images: [String]
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators:false) {
            HStack(alignment:.center, spacing:15) {
                ForEach(images, id:\.self) { image in
                    NavigationLink (destination: ImageDetailView(image:image )) {
                    
                        Image(image)
                            .resizable()
                            .scaledToFit()
                            .frame(height:200)
                            .cornerRadius(12)
                    }
                }
            } //: HSTACK
        } //: SCROLL
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        InsetGalleryView(images: organisms[0].gallery)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

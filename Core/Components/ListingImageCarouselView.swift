//
//  ListingImageCarouselView.swift
//  rightswipe
//
//  Created by khushi mittal on 29/11/23.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = ["listing-1", "listing-2", "listing-3", "khushi"]
    var body: some View {
        TabView{
            ForEach(images, id: \.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}

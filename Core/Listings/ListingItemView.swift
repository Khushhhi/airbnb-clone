//
//  ListingView.swift
//  rightswipe
//
//  Created by khushi mittal on 27/11/23.
//

import Foundation
import SwiftUI

struct ListingItemView: View{
    
//    var images = ["listing-1", "listing-2", "listing-3", "lisiting-4"]
    var body: some View{
        VStack (spacing: 8){
            //images
            ListingImageCarouselView()
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
         
            HStack (alignment: .top){
                    //details
                    VStack (alignment: .leading){
                        Text("Miami, Florida")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        
                        Text("12 mi away")
                            .foregroundColor(.gray)
                        Text("November 3 - 10")
                            .foregroundColor(.gray)
                        HStack (spacing: 4){
                            Text("$567")
                                .fontWeight(.semibold)
                                
                            Text("night")
                        }
                        .foregroundStyle(.black)
                        
                    }
                    
                    
                    Spacer()
                    //rating
                    HStack (spacing: 2){
                        Image(systemName: "star.fill")
                           
                        Text("4.86")
                        
                    }
                    .foregroundStyle(.black)
                    
                }
//                .background(.red)
                .font(.footnote)
            
        }
        .padding()
        
    }
}

#Preview{
    ListingItemView()
}

//
//  ExploreView.swift
//  rightswipe
//
//  Created by khushi mittal on 26/11/23.
//

import Foundation
import SwiftUI

struct ExploreView: View{
    @State private var showDestinationSearchView = false
    var body: some View{
        NavigationStack{
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView)
            } else{
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack (spacing: 32){
                        ForEach(0 ... 10, id: \.self){ listing in
                            NavigationLink(value: listing){
                                ListingItemView()
        //                        Rectangle()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
    //                .padding()
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
           
        }
    }
}


#Preview {
    ExploreView()
}

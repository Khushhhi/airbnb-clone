//
//  DestinationSearchView.swift
//  rightswipe
//
//  Created by khushi mittal on 02/12/23.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}
struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    var body: some View {
        VStack{
            
            Button{
                withAnimation(.snappy){
                    show.toggle()
                }
                
            } label:{
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundColor(.black)
            }
            
            //where to view
            VStack (alignment: .leading){
                if selectedOption == .location{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search Destinations", text: $destination)
                            .font(.subheadline)
                        
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else{
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
                
            }
//            .fontWeight(.semibold)
            .padding()
            .frame(height: selectedOption == .location ? 120: 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .location}
            }
            
            // date selection view
            VStack{
                if selectedOption == .dates{
                    HStack{
                        Text("Show Expanded View")
                        
                        Spacer()
                    }
                } else{
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
                .onTapGesture {
                    withAnimation(.snappy) {selectedOption = .dates}
                }
                .fontWeight(.semibold)
                .padding()
                .frame(height: selectedOption == .dates ? 120: 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            //num guest view
            VStack{
                if selectedOption == .guests{
                    HStack{
                        Text("Show Expanded View")
                        
                        Spacer()
                    }
                } else{
                    CollapsedPickerView(title: "Where", description: "Add guests")
                }
            }
                .onTapGesture {
                    withAnimation(.snappy) {selectedOption = .guests}
                }
                .fontWeight(.semibold)
                .padding()
                .frame(height: selectedOption == .guests ? 120: 64)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
          }
     }
}
#Preview {
    DestinationSearchView(show: .constant(false))
    
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
                    
            }
            .frame(height: 22)
            .font(.subheadline)
            .fontWeight(.semibold)
        }

    }
}

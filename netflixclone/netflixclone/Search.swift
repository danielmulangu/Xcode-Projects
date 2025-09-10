//
//  Search.swift
//  netflixclone
//
//  Created by Daniel Mulangu on 5/27/22.
//

import SwiftUI

@available(iOS 15.0, *)
struct Searchview: View {
    @State private var searchText = ""
    @available(iOS 15.0, *)
    var body: some View {
        NavigationView{
            if #available(iOS 15.0, *) {
                Text("\(searchText)")
                    .searchable(text: $searchText, prompt: "Search in your library" )
                    .navigationTitle("").font(.system(size: 15))
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct Searchview_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            Searchview()
        } else {
            // Fallback on earlier versions
        }
    }
}

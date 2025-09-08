//
//  SearchView.swift
//  test
//
//  Created by Daniel Mulangu on 6/12/22.
//
/* Literally what this cod3 does is like showing a list of data like contacts and actually filtering
 them according to whatever input you are writing in the search box as well as giving you
 suggestions regarding the data that is already in the list.
 Note that if you start to write something out well it starts to filter what you're writing
 and show you the possible outcome of your result.
    */

import SwiftUI
@available(iOS 15.0, *)

struct SearchView: View {
    @State var SearchQuery = ""
    var names = ["Goku", "Gojo", "Ichigo", "Obito", "Tanjiro"]
    var body: some View {
        NavigationView{
            List{
                ForEach(searchResults, id: \.self)
                {
                    name in Text(name)
                }
            }
            .searchable(text: $SearchQuery, suggestions: {
                ForEach(searchResults, id: \.self){
                    result in Text("Are you looking for \(result)?").searchCompletion(result)
                }
            })
            .navigationTitle("Recents Search")
            
        }
    }
    var searchResults: [String]
    {
        if SearchQuery.isEmpty
        {
            return names
        }
        else {
            return names.filter({ $0.contains(SearchQuery)})
        }
    }
}

@available(iOS 15.0, *)
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

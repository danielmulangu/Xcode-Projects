//
//  ContentView.swift
//  netflixclone
//
//  Created by Daniel Mulangu on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    @State private var select = 0
    
    var body: some View {
        ZStack{
            Color.black
            TabView(selection: $select){
                Homepage()
                    .font(.title)
                    .tabItem {
                    VStack{
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
                .tag(0)
                
                if #available(iOS 15.0, *) {
                    Searchview()
                        .font(.title)
                        .tabItem {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                Text("Search")
                            }
                        }
                        .tag(1)
                } else {
                    // Fallback on earlier versions
                }
                
                Homepage()
                    .font(.title)
                    .tabItem {
                    VStack{
                        Image(systemName: "bag")
                        Text("Orders")
                    }
                }
                .tag(2)
                
                Homepage()
                    .font(.title)
                    .tabItem {
                    VStack{
                        Image(systemName: "person")
                        Text("Acoount")
                    }
                }
                .tag(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

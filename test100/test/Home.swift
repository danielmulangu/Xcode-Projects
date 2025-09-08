//
//  Home.swift
//  test
//
//  Created by Daniel Mulangu on 6/12/22.
//

import SwiftUI

struct Home: View {
    @State private var select = 0
    var body: some View {
        ZStack{
            Color.black
            TabView(selection: $select){
                MainPage()
                    .font(.title)
                    .tabItem(){
                        VStack{
                            Image(systemName: "house")
                            Text("Home")
                        }
                    }
                    .tag(0)
                    
                SearchView()
                    .font(.title)
                    .tabItem(){
                        VStack{
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }
                    }
                    .tag(1)
                
                Store()
                    .font(.title)
                    .tabItem(){
                        VStack{
                            Image(systemName: "bag")
                            Text("Cart")
                        }
                    }
                    .tag(2)
                Account()
                    .font(.title)
                    .tabItem(){
                        VStack{
                            Image(systemName: "person")
                            Text("Account")
                        }
                    }.tag(3)
            }//End of TabView
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

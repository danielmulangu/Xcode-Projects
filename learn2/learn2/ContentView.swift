//
//  ContentView.swift
//  learn2
//
//  Created by Daniel Mulangu on 4/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            ZStack {
                Image("toronto")
                    .resizable().aspectRatio(contentMode: .fit)
                    .cornerRadius(10.0)
                //stack for the text
                VStack(alignment: .center) {
                    Text("CN Tower").foregroundColor(.white).font(.largeTitle).padding([.top, .leading, .trailing])
                    
                    Text("Toronto").font(.caption).foregroundColor(.white)
            
                }
                // these characteristics apply to the whole stack
                //Note: it's possible to also put the text foreground color outside of that stack but it will be applied to the whole stack
                .background(Color.black)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .cornerRadius(10.0)
            }.padding()
            
            ZStack {
                Image("london")
                    .resizable().aspectRatio(contentMode: .fit)
                    .cornerRadius(10.0)
                VStack(alignment: .center) {
                    Text("Big Ben").font(.largeTitle).padding([.top, .leading,.trailing])
                    Text("London").font(.caption)
                }.background(Color.black)
                .opacity(0.8)
                .cornerRadius(10.0)
                .foregroundColor(.white)
            }.padding()
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
            
    }
}

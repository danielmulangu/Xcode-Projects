//
//  ContentView.swift
//  animation app
//
//  Created by Daniel Mulangu on 6/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var TotalScore = 1000
    @State private var image1 = "apple"
    @State private var image2 = "apple"
    @State private var image3 = "apple"
    
    var body: some View {
        VStack{
            Spacer()
            Text("SwiftUI")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding(.all)
                .background(Color.blue)
          Spacer()
            HStack
            {
                Text("Score:")
                    .fontWeight(.heavy)
                Text(String(TotalScore))
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
            }//end of first Hstack
            Spacer()
            HStack{
                Spacer()
                Image(image1).resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image(image2).resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image(image3).resizable().aspectRatio(contentMode: .fit)
                Spacer()
            }//end of 2nd Hstack
            Spacer()
            Button(action: {
                let rand1 = Int.random(in: 1...3)
                let rand2 = Int.random(in: 1...3)
                let rand3 = Int.random(in: 1...3)
                
                if(rand1==1) { image1 = "apple"}
                else if(rand1==2){image1 = "cherry"}
                else if(rand1==3){image1 = "star"}
                
                //image2
                if(rand2==1) { image2 = "apple"}
                else if(rand2==2){image2 = "cherry"}
                else if(rand2==3){image2 = "star"}
                //image3
                if(rand3==1) { image3 = "apple"}
                else if(rand3==2){image3 = "cherry"}
                else if(rand3==3){image3 = "star"}
                
                //score updatring part
                if(rand1==rand2 && rand1==rand3)
                {TotalScore += 500}
                else if(rand1 != rand2 && rand2==rand3)
                {TotalScore -= 50}
                else if(rand1 == rand2 && rand2 != rand3)
                {TotalScore -= 50}
                else if(rand1 != rand2 && rand2 != rand3)
                {TotalScore -= 100}
                
                
            }, label: {
                Text("Play").fontWeight(.bold)
                    .padding(.all).accentColor(.black).background(Color.red)
            })
            Spacer()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

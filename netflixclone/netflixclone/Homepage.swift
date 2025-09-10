//
//  Homepage.swift
//  netflixclone
//
//  Created by Daniel Mulangu on 3/28/22.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                  Text("Welcome  Home ")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                }//ENd of VStack
            }
        }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}

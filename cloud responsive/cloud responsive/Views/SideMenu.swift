//
//  SideMenu.swift
//  cloud responsive
//
//  Created by Daniel Mulangu on 3/19/22.
//

import SwiftUI

struct SideMenu: View {
    @Binding var currentTab: String
    var body: some View {
        
        VStack{
            
            HStack{
                
                
                
                Text("Files")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .kerning(1.5)
                
                Text("Go").font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .kerning(1.5)
                    .padding(1.0)
                background(Color("blue"))
                    .cornerRadius(10)
                
            }.padding(10)
            
            Divider()
                .background(Color.gray.opacity(0.4))
                .padding(.bottom)
            
            HStack(spacing: 12){
                
                Image("picture").resizable().aspectRatio(contentMode: .fill).frame(width: 50, height: 50).clipShape(Circle())
                
                Text("Hi, $user").font(.title2).fontWeight(.bold).foregroundColor(.black)
                Tab(image: "house.fill", title: "home", currentTab: $currentTab)
            }
            
        }
        .frame(width: 210)
        .frame(maxHeight: .infinity, alignment: .top)
        .background(Color("gray")).ignoresSafeArea()
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}

//Tab button
struct Tab: View{
    
    var image: String
    var title: String
    @Binding var currentTab: String
    var body: some View {
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            
            HStack(spacing: 15){
                Image(systemName: image).font(.title2).foregroundColor(currentTab == title ? Color("blue") : Color.gray.opacity(0.8))
                
                Text(title).foregroundColor(Color.gray.opacity(0.8))
                    .kerning(1.2)
                
            }
            .padding(.vertical,12)
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
            
        })
    }
}

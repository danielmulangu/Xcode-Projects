//
//  Home.swift
//  cloud responsive
//
//  Created by Daniel Mulangu on 3/19/22.
//

import SwiftUI

struct Home: View {
    @State var currentTab = "Home"
    var body: some View {
        
        HStack{
            // SIde Menu...
            SideMenu(currentTab: $currentTab)
            
            
        }.frame(width: getRect().width / 1.3, height: getRect().height - 100, alignment: .leading)
        .background(Color.white.ignoresSafeArea())
        //USe button style
        .buttonStyle(PlainButtonStyle())
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

//Extensions for getting screen size
// for both mac and ios
extension View{
    
    func getRect()->CGRect{
        
        #if os(macOS)
        return NSScreen.main!.visibleframe
        #else
        return UIScreen.main.bounds
        #endif
    }
}

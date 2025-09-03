//
//  ContentView.swift
//  August_test_login
//
//  Created by Daniel Mulangu on 8/24/21.
//

import SwiftUI


let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255/0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
    @State var username: String = ""
    /* by default it will be an empty string if the user doesn't enter anythiing at all , for the @State in a nutshell it just rerenders the values entered by the user so that hell be able to see what he has been typing*/
    @State var password: String = ""
    @State var selection = false
    var body: some View {
        NavigationView{
            ZStack {
                Image("background2").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    WelcomeText()
                    UserImage()
                   
                    NavigationLink(destination: SignUpView()){
                        LoginButtonContent()
                    }
                    
                    NavigationLink(destination: SignUpView()){
                        SignupButtonContent()
                    }
                    Spacer()
                    
                }.padding()
            }//end of first ZStack
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Welcome to Ky$ Shop")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color.black)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("sand").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width:220, height: 60)
            .background(Color.gray)
            .cornerRadius(15.0)
    }
}

struct SignupButtonContent: View {
    var body: some View {
        Text("SIGN UP")
            .font(.headline)
            .foregroundColor(.gray)
            .padding()
            .frame(width:220, height: 60)
            .background(Color.white)
            .cornerRadius(15.0)
    }
}


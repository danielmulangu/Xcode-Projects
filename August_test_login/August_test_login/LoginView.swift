//
//  LoginView.swift
//  August_test_login
//
//  Created by Daniel Mulangu on 9/26/21.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State var uname: String = ""
    /* by default it will be an empty string if the user doesn't enter anythiing at all , for the @State in a nutshell it just rerenders the values entered by the user so that hell be able to see what he has been typing*/
    @State var pass: String = ""
    var body: some View {
       
        ZStack {
            Image("background1").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                LoginWelcome()
                
                Spacer()
                Text("Log in to start using our beatiful app")
                    .font(.subheadline)
                    
                Spacer()
                Spacer()
                VStack {
                    Spacer()
                    Text("Login")
                        .fontWeight(.light)
                    TextField("Username", text:$uname)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(245.0)
                        .padding(.bottom, 20)
                    SecureField("Password", text: $pass)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(245.0)
                        .padding(.bottom, 20)
                    Text("Or Login with")
                    Spacer()
                    Spacer()
                }
               
                
            
            }
        }//End of First ZStack
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct LoginWelcome: View {
    var body: some View {
        Text("Ky$ ")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color.black)
            .multilineTextAlignment(.center)
            .padding([.top, .leading, .bottom], 20.0)
            .frame(alignment: .topLeading)
            
    }
}

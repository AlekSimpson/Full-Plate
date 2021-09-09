//
//  ContentView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI
import CoreData

struct LoggedOut: View
{
    @State var showRegister = false
    @State var showSignIn = false
    @State var signedIn:Bool
    
    var body: some View
    {
        NavigationView
        {
            if !signedIn
            {
                ZStack
                {
                    //Background
                    Image("logged-out-background")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                    VStack
                    {
                        //Logo
                        Image("full-plate-logo-white")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .gradientForeground(colors: [Color.Custom.LightPlateOrange, Color.Custom.PlateOrange])
                            .offset(y:40)
                        
                        Text("Full-plate")
                            .scaledFont(name: "Roboto-Light", size: 50)
                            .foregroundColor(.black)
                        
                        
                        Spacer()
                        
                        //Buttons
                        HStack
                        {
                            LoginButton(showLogin: $showSignIn)
                            RegisterButton(showRegister: $showRegister)
                        }
                    }.padding(.bottom, 40)
                }.sheet(isPresented: $showRegister, content:
                {
                    RegisterView(showSelf: $showRegister, Title: "Register", loggedIn: $signedIn)
                })
                .sheet(isPresented: $showSignIn)
                {
                    RegisterView(showSelf: $showSignIn, Title: "Login In", loggedIn: $signedIn)
                }
            }else
            {
                MainView(loggedIn: $signedIn)
            }
        }
    }
}

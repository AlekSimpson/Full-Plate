//
//  RegisterView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

struct RegisterView: View
{
    @Binding var showSelf: Bool
    @State var email = ""
    @State var pwd = ""
    var Title:String
    @Binding var loggedIn:Bool
    
    var body: some View
    {
        NavigationView
        {
            GeometryReader
            { geo in
                ZStack
                {
                    VStack(alignment: .leading)
                    {
                        Text(Title)
                            .scaledFont(name: "Comforata-Regular", size: 50)
                        Field(placeholder: "Email", text: $email, geo: geo)
                            .textContentType(.emailAddress)
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                        Field(placeholder: (Title == "Register" ? "Create a Password" : "Password"), text: $pwd, geo: geo)
                            .textContentType(.password)
                            .disableAutocorrection(true)
                        SignUpButton(geo: geo, text: (Title == "Register" ? "SIGN UP" : "LOG IN"), signedIn: $loggedIn)
                        
                        Spacer()
                    }.padding(.leading, 15)
                }
                .navigationBarItems(leading: DismissButton(showself: $showSelf))
            }
        }
    }
}

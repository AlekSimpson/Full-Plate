//
//  LoginButton.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

struct LoginButton:View
{
    @Binding var showLogin:Bool
    
    var body: some View
    {
        Button
        {
            showLogin.toggle()
        } label:
        {
            Text("LOG IN")
                .scaledFont(name: "Roboto-Medium", size: 15)
                .frame(width: 167, height: 52)
                .foregroundColor(Color.black)
                .border(Color.black, width: 2.5)
                .cornerRadius(5)
        }.shadow(radius: 10)
    }
}

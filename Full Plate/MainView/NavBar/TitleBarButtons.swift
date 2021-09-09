//
//  TitleBarButtons.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

struct TitleBarButtons: View
{
    @Binding var signedIn:Bool
    
    var body: some View
    {
        SignOutButton(signedIn: $signedIn)
    }
}

struct SignOutButton:View
{
    @Environment(\.colorScheme) var colorScheme
    @Binding var signedIn:Bool
    
    var body: some View
    {
        Image("portrait.exit")
            .padding()
            .foregroundColor(colorScheme == .dark ? .white : .black)
            .onTapGesture
            {
                signedIn.toggle()
            }
    }
}

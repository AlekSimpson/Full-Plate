//
//  SignUpButton.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

struct SignUpButton: View
{
    var geo:GeometryProxy
    var text:String
    @Binding var signedIn:Bool
    
    var body: some View
    {
        Button
        {
            // Signs the user up
            if text == "LOG IN"
            {
                // login
                signedIn.toggle()
            }
        } label:
        {
            ZStack
            {
                LinearGradient(gradient: Gradient(colors: [ Color.Custom.LightPlateOrange, Color.Custom.PlateOrange ]), startPoint: .top, endPoint: .bottom)
                
                Text(text)
                    .scaledFont(name: "Roboto-Medium", size: 15)
                    .padding()
                    .foregroundColor(Color.white)
            }
        }
        .frame(width: (geo.size.width * 0.9) + 5,height: 50)
        .cornerRadius(5)
        .shadow(radius: 20)
    }
}

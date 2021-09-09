//
//  RegisterButton.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

struct RegisterButton:View
{
    @Binding var showRegister:Bool
    
    var body: some View
    {
        Button
        {
            //Takes you to register view
            self.showRegister.toggle()
        } label:
        {
            ZStack
            {
                LinearGradient(gradient: Gradient(colors: [Color.Custom.LightPlateOrange, Color.Custom.PlateOrange]), startPoint: .top, endPoint: .bottom)
                Text("REGISTER")
                    .scaledFont(name: "Roboto-Medium", size: 15)
                    .padding()
                    .foregroundColor(Color.white)
            }
            .frame(width:167,height: 52)
            .cornerRadius(5)
            .shadow(radius: 20)
        }.shadow(radius: 10)
    }
}

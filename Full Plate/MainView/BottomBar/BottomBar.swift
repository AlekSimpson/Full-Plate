//
//  BottomBar.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct BottomBar: ToolbarContent
{
    
    var body: some ToolbarContent
    {
        ToolbarItem(placement: .bottomBar)
        {
            HStack
            {
                Image(systemName: "house")
                    .padding()
                
                Image(systemName: "magnifyingglass")
                    .padding()
                
                Image(systemName: "plus")
                    .padding()
                    .frame(width: 60, height: 35)
                    .background( LinearGradient(gradient: Gradient(colors: [Color.Custom.LightPlateOrange, Color.Custom.PlateOrange]), startPoint: .topTrailing, endPoint: .bottomLeading) )
                    .cornerRadius(20)
                
                Image(systemName: "bubble.left")
                    .padding()
                
                Image(systemName: "person")
                    .padding()
            }
        }
    }
}

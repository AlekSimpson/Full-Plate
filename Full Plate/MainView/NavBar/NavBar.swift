//
//  NavBar.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI


struct NavBar: ToolbarContent
{
    @Binding var signedIn:Bool
    
    var body: some ToolbarContent
    {
        ToolbarItem(placement: .navigation)
        {
            TopBarTitle()
        }
        ToolbarItem(placement: .destructiveAction)
        {
            TitleBarButtons(signedIn: $signedIn)
        }
    }
}

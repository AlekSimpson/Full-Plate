//
//  ProfileTag.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

// MARK: Profile Tag
struct ProfileTag: View
{
    @Environment(\.colorScheme) var colorScheme
    var name:String
    var usertag:String
    var image:String
    
    var body: some View
    {
        let color = (colorScheme == .dark ? Color.white : Color.black)
        
        HStack
        {
            //Profile image
            Image(image)
                .clipShape(Circle())
            VStack(alignment: .leading)
            {
                //Profile Name
                Text(name)
                    .scaledFont(name: "Roboto-Bold", size: 12)
                    .foregroundColor(color)
                //Profile tag
                Text(usertag)
                    .scaledFont(name: "Roboto-Regular", size: 12)
                    .foregroundColor(color)
            }
        }
    }
}

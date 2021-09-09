//
//  DescriptionView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct DescriptionView: View
{
    var geo:GeometryProxy
    var post:Post
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            Text("Description")
                .scaledFont(name: "Comfortaa-Regular", size: 18)
            Text("This is a smoked salmon salad with a brenaise sauce and citrus parsely salad.")
                .scaledFont(name: "Roboto-Regular", size: 12)
                .multilineTextAlignment(.leading)
                .frame(width: geo.size.width - 20)
                .padding(.top, 3)
        }
    }
}

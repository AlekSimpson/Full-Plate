//
//  InfoView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct InfoView: View
{
    @Environment(\.colorScheme) var colorScheme
    var post:Post 
    
    var body: some View
    {
        GeometryReader
        { geo in
            ZStack
            {
                if colorScheme == .dark
                {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                }else
                {
                    Color.white
                        .edgesIgnoringSafeArea(.all)
                }

                VStack
                {
                    // Post Title
                    Text(post.Title)
                        .scaledFont(name: "Comfortaa-Bold", size: 25)
                        .padding(.top)
                        .frame(alignment: .leading)
                    
                    // Star rating
                    RatingView(geo: geo, post: post)
                    
                    //Description
                    DescriptionView(geo: geo, post: post)

                    //Comments
                    CommentsView(post:post, geo: geo)
                    
                    Spacer()
                }
            }
        }
    }
}

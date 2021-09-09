//
//  RatingView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct RatingView: View
{
    var geo:GeometryProxy
    var post:Post
    
    var body: some View
    {
        let rating = setRating()
        
        VStack(alignment: .center)
        {
            HStack
            {
                Rectangle().frame(width: geo.size.width * 0.3, height: 1)
                ForEach(0...4, id:\.self)
                { i in
                    Image(systemName: rating[i])
                }
                Rectangle().frame(width: geo.size.width * 0.3, height: 1)
            }
            Text("\(post.NumOfRatings) Stars")
                .padding(.leading)
                .padding(.trailing)
                .padding(.top, 3)
                .padding(.bottom, 3)
                .scaledFont(name: "Comfortaa-Light", size: 15)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.white, lineWidth: 1)
                )
        }
    }
    
    func setRating() -> [String]
    {
        var rating:[String] = ["star", "star", "star", "star", "star"]
        
        if post.Rating != 0
        {
            if post.Rating != 1
            {
                for i in 0...(post.Rating - 1)
                {
                    rating[i] = "star.fill"
                }
            }else
            {
                rating[0] = "star.fill"
            }
        }
        
        return rating
    }
}

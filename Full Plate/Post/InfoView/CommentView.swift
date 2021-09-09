//
//  CommentView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct CommentView: View
{
    var comment:CommentModel
    var geo:GeometryProxy
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            HStack(alignment: .top)
            {
                ProfileTag(name: comment.Profile.Name, usertag: comment.Profile.Tag, image: comment.Profile.ProfileImage)
                Text(comment.Text)
                    .scaledFont(name: "Roboto-Regular", size: 12)
                    .multilineTextAlignment(.leading)
                    .frame(width: geo.size.width * 0.6, alignment: .leading)
                    .padding(.leading, 5)
            }
            HStack
            {
                Image(systemName: "heart")
                Text("\(comment.Likes) Likes")
                    .scaledFont(name: "Roboto-Light", size: 12)
                Text("Reply")
                    .scaledFont(name: "Roboto-Light", size: 12)
            }
        }
    }
}

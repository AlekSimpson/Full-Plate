//
//  CommentsView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct CommentsView: View
{
    var post:Post 
    var geo:GeometryProxy
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            Divider()
            Text("Comments")
                .scaledFont(name: "Comfortaa-Regular", size: 18)
            Divider()
            
            ScrollView
            {
                LazyVStack(alignment: .leading)
                {
                    ForEach(post.Comments, id: \.self)
                    { comment in
                        CommentView(comment: comment, geo: geo)
                    }
                }
            }
        }.padding(.leading, 8)
    }
}

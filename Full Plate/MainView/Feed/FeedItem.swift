//
//  FeedItem.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

struct FeedItem: View
{
    var width:CGFloat
    var height:CGFloat
    var post:Post
    var showPoster:Bool
    
    var body: some View
    {
//        NavigationLink(destination: PostView(post: post))
        NavigationLink(destination: PostView(post: post))
        {
            VStack(alignment: .leading)
            {
                //Post Image
                if showPoster
                {
                    Image(post.Image)
                }else
                {
                    Image(post.Image)
                        .resizable()
                        .frame(height: height)
                }
                    
                //Profile Tag
                if showPoster
                {
                    ProfileTag(name: post.Profile.Name, usertag: post.Profile.Tag, image: post.Profile.ProfileImage)
                }
            }
            .frame(width: (showPoster ? self.width : width), height: (showPoster ? self.height : height))
        }
    }
}

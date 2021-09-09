//
//  FeaturedView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct FeaturedView: View
{
    @ObservedObject var posts = Posts()
    var geo:GeometryProxy
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            Text("FEATURED")
                .scaledFont(name: "Roboto-Black", size: 15)
                .padding(.leading, 15)
            ScrollView(.horizontal)
            {
                LazyHStack
                {
                    ForEach(posts.FeaturedPosts, id: \.self)
                    { post in
                        FeedItem(width: geo.size.width, height: geo.size.height, post: post, showPoster: true)
                    }
                }
            }
        }
    }
}


//ScrollView
//{
//    LazyVStack
//    {
//        ForEach(items, id: \.self) //dataSource.items
//        { item in
//            Text(item.Name)
//                .onAppear
//                {
////                                dataSource.loadMoreContentIfNeeded(currentItem: item)
//                }
//                .padding(.all, 30)
//        }
//
////                    if dataSource.isLoadingPage
////                    {
////                        ProgressView()
////                    }
//    }
//}


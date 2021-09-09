//
//  ForYouView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct ForYouView: View
{
    @ObservedObject var posts:Posts
    var geo:GeometryProxy
    
    var body: some View
    {
        let maxWidth = (geo.size.width)
        let gridItemWidth = (maxWidth / 2) - 15
        let gridItems = [GridItem(.fixed(gridItemWidth), spacing: 10, alignment: .leading),
                         GridItem(.fixed(gridItemWidth), spacing: 10, alignment: .leading)]
        
        VStack(alignment: .leading)
        {
            Text("FOR YOU")
                .scaledFont(name: "Roboto-Black", size: 15)
            
            LazyVGrid(columns: gridItems, alignment: .center, spacing: 10)
            {
                ForEach(posts.ForYouPosts.indices, id: \.self)
                { postIndex in
                    let patternVar = ((((postIndex + 1) % 5) == 0) && postIndex != 0)
                    ColSpan(span: patternVar)
                    {
                        FeedItem(width: (patternVar ? (maxWidth - 20) : gridItemWidth),
                                 height: (patternVar ? 343 : 231),
                                 post: posts.ForYouPosts[postIndex],
                                 showPoster: false)
                    }
                }
            }
            .frame(width: maxWidth - 20)
        }
    }
}

struct ColSpan<Content: View>: View
{
    let span: Bool
    let content: () -> Content
    
    init(span: Bool, @ViewBuilder content: @escaping () -> Content)
    {
        self.span = span
        self.content = content
    }
    
    var body: some View
    {
        content()
        
        if span { Color.clear }
    }
}

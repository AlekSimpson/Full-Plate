//
//  MainView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

struct MainView: View
{
    @ObservedObject var posts = Posts()
    @Binding var loggedIn:Bool
    
    var body: some View
    {
        GeometryReader
        { geo in
            
            ScrollView
            {
                LazyVStack
                {
                    FeaturedView(geo: geo).frame(height: geo.size.height / 1.5)
                    ForYouView(posts: posts, geo: geo)
                }
            }
        }
        .toolbar
        {
            NavBar(signedIn: $loggedIn)
            BottomBar()
        }
    }
}

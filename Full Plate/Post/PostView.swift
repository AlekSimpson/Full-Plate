//
//  PostView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct PostView: View
{
    var post:Post
    @State private var shown = false
    
    var body: some View
    {
        GeometryReader
        { geo in
            ZStack
            {
                Image(post.Image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .edgesIgnoringSafeArea(.all)
                    .offset(y: -100)
                
                VStack(alignment: .center)
                {
                    TopView(geo: geo, user: post.Profile)
                    Spacer()
                    BottomSheetView(
                        isOpen: self.$shown,
                        maxHeight: geo.size.height * 0.9
                    ) {
                        InfoView(post: post)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}


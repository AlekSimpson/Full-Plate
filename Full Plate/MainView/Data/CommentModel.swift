//
//  CommentModel.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import Foundation
import SwiftUI

struct CommentModel: Hashable
{
    var Profile:User
    var Text:String
    var Likes:Int
    var Replies:[CommentModel]
    
    init(profile:User, text:String, likes:Int, replies:[CommentModel])
    {
        self.Profile = profile
        self.Text = text
        self.Likes = likes
        self.Replies = replies
    }
}

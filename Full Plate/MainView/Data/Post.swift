//
//  Post.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import Foundation

struct Post: Hashable
{
    var Image:String
    var Title:String
    var Rating:Int
    var NumOfRatings:Int
    var Description:String
    var Profile:User
    var Comments:[CommentModel]
    
    init(image:String, title:String, rating:Int, numOfRatings:Int, description:String, profile:User, comments:[CommentModel])
    {
        self.Image = image
        self.Title = title
        self.Rating = rating
        self.NumOfRatings = numOfRatings
        self.Description = description
        self.Profile = profile
        self.Comments = comments
    }
}

class Posts: ObservableObject
{
    @Published var FeaturedPosts: [Post]
    @Published var ForYouPosts: [Post]
    
    var Users = [User(name: "Ridhwan Nordin", tag: "@ridzjcob", image: "user1"),
                 User(name: "Clem Onojeghuo", tag: "@clemono2", image: "user2"),
                 User(name: "Jon Tyson", tag: "@jontyson", image: "user3"),
                 User(name: "Simon Zhu", tag: "@smnzhu", image: "user4"),
                 User(name: "Angelo Pantazis", tag: "@angelopantazis", image: "user5")]
    
    init()
    {
        let dummyComments = [CommentModel(profile: Users[4], text: "Looks amazing!", likes: 4, replies: []),
                             CommentModel(profile: Users[3], text: "Looks amazing!", likes: 4, replies: []),
                             CommentModel(profile: Users[2], text: "Looks amazing!", likes: 4, replies: []),
                             CommentModel(profile: Users[1], text: "Looks amazing!", likes: 4, replies: []),
                             CommentModel(profile: Users[0], text: "Looks amazing!", likes: 4, replies: []),
                             CommentModel(profile: Users[0], text: "Comment 1", likes: 4, replies: []),
                             CommentModel(profile: Users[0], text: "Comment 2", likes: 4, replies: []),
                             CommentModel(profile: Users[0], text: "This is a really long comment about the post", likes: 4, replies: []),
                             CommentModel(profile: Users[0], text: "Comment 3", likes: 4, replies: []),
                             CommentModel(profile: Users[0], text: "Comment 4", likes: 4, replies: []),]
        
        self.FeaturedPosts = [Post(image: "post1", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[0], comments: dummyComments),
                              Post(image: "post2", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[1], comments: dummyComments),
                              Post(image: "post3", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[2], comments: dummyComments),
                              Post(image: "post4", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[3], comments: dummyComments)]
        
        self.ForYouPosts = [Post(image: "recPost1", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[4], comments: dummyComments),
                            Post(image: "recPost2", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[4], comments: dummyComments),
                            Post(image: "recPost3", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[4], comments: dummyComments),
                            Post(image: "recPost4", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[4], comments: dummyComments),
                            Post(image: "recPost5", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[4], comments: dummyComments),
                            Post(image: "recPost6", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[4], comments: dummyComments),
                            Post(image: "recPost7", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[4], comments: dummyComments),
                            Post(image: "recPost8", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[4], comments: dummyComments),
                            Post(image: "recPost9", title: "Smoked Salmon Salad", rating: 4, numOfRatings: 1445, description: "This is a description", profile: Users[4], comments: dummyComments)]
    }
}

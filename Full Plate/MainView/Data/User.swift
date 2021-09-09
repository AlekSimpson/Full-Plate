//
//  User.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import Foundation
import SwiftUI

struct User: Hashable
{
    var Name:String
    var Tag:String
    var ProfileImage:String
    
    init(name:String, tag:String, image:String)
    {
        self.Name = name
        self.Tag = tag
        self.ProfileImage = image 
    }
}

class Users: ObservableObject
{
    @Published var Users: [User]
    
    init()
    {
        self.Users = [User(name: "Ridhwan Nordin", tag: "@ridzjcob", image: ""),
                      User(name: "Clem Onojeghuo", tag: "@clemono2", image: ""),
                      User(name: "Jon Tyson", tag: "@jontyson", image: ""),
                      User(name: "Simon Zhu", tag: "@smnzhu", image: "")]
    }
}

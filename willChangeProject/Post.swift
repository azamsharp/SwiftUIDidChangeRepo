//
//  Post.swift
//  willChangeProject
//
//  Created by Mohammad Azam on 7/19/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation

struct Post: Codable {
    let title: String
    let body: String
    let postId: Int 
    let dateCreated: String 
}

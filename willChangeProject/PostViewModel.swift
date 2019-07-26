//
//  PostViewModel.swift
//  willChangeProject
//
//  Created by Mohammad Azam on 7/19/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class PostListViewModel: BindableObject {
    
    let willChange = PassthroughSubject<Void,Never>()
    
    var posts: [PostViewModel] = [PostViewModel]() {
        willSet {
            print("willChange fired")
            self.willChange.send()
        }
    }
    
    init() {
        
        Webservice().loadPosts { [unowned self] posts in // closure is fired on the main thread
            
            // if I comment this line the body is still rendered since I fired willChange
            // so even if we did not got the data we rendered the body again
            self.posts = posts.map(PostViewModel.init)
        }
        
    }
    
}

class PostViewModel {
    
    var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    var title: String {
        return self.post.title
    }
    
    var description: String {
        return self.post.body
    }
    
}



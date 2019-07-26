//
//  ContentView.swift
//  willChangeProject
//
//  Created by Mohammad Azam on 7/19/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObjectBinding var postListVM = PostListViewModel()
    
    var body: some View {
        
        print("body is rendered...")
        
        return List {
            
            ForEach(self.postListVM.posts,id: \.title) { post in
                VStack {
                    Text(post.title)
                    Text(post.description)
                }
            }
            
        }
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

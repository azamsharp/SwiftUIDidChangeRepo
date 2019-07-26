//
//  Webservice.swift
//  willChangeProject
//
//  Created by Mohammad Azam on 7/19/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation

class Webservice {
    
    func loadPosts(completion: @escaping ([Post]) -> ()) {
        
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/posts")!) { data, _, _ in
            
            if let data = data {
                
                let posts = try! JSONDecoder().decode([Post].self, from: data)
                DispatchQueue.main.async {
                    completion(posts)
                }
                
            }
            
        }.resume()
        
    }
    
}

//
//  FeedView.swift
//  Circles
//
//  Created by Joseph DeWeese on 6/8/22.
//

import SwiftUI

struct FeedView: View {
    //JWD:  PROPERTIES
    
    @ObservedObject var posts: PostArrayObject
    var title: String
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false, content: {
            LazyVStack {
                ForEach(posts.dataArray, id: \.self) { posts in
                    PostView(post: posts, showHeaderAndFooter: true, addHeartAnimationToView: true)
                }
            }
            
        })
        .navigationBarTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            FeedView(posts: PostArrayObject(), title: "Feed Test")
    }
        .preferredColorScheme(.dark)
}
}

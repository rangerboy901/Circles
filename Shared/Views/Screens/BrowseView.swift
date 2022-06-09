//
//  BrowseView.swift
//  Circles
//
//  Created by Joseph DeWeese on 6/8/22.
//

import SwiftUI

struct BrowseView: View {
    //JWD:  PROPERTIES
    var posts = PostArrayObject()
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false, content: {
            CarouselView()
            ImageGridView(posts: posts)
        })
        .navigationTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        BrowseView()
    }
}
}

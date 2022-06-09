//
//  ContentView.swift
//  Shared
//
//  Created by Joseph DeWeese on 6/8/22.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    //JWD:  PROPERTIES
    
    var currentUserID: String? = nil
    
    
    var body: some View {
        
        
        TabView {
            NavigationView {
                FeedView(posts: PostArrayObject(), title: "MyFeed")
            }
            .tabItem {
                Text("Feed")
                Image(systemName: "book.fill")
            }
            NavigationView {
                BrowseView()
            }
            .tabItem{
                Text("Browse")
                Image(systemName: "magnifyingglass")
                
            }
            UploadView()
                .tabItem{
                    Text("Upload")
                    Image(systemName: "square.and.arrow.up.fill")
                    
                }
            ZStack {
                
                if currentUserID != nil {
                    NavigationView {
                        ProfileView(isMyProfile: true, profileDisplayName: "My Profile", profileUserID: "")
                    }
                } else {
                    SignUpView()
                }
            }
            .tabItem{
                Text("Profile")
                Image(systemName: "person.fill")
                
            }
        }
        
        
        .accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

//
//  PostModel.swift
//  Circles
//
//  Created by Joseph DeWeese on 6/8/22.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable {
    
    var id = UUID()
    var postID: String
    var userID: String
    var username: String // user in database
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likedByUser: Bool
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

//
//  Book.swift
//  Books2ReadWDI21
//
//  Created by Michal Sulkiewicz on 17/03/2021.
//

import SwiftUI

enum BookPriority: String, Codable, Comparable {
    
    case high = "high"
    case medium = "medium"
    case low = "low"
    
    private var sortOrder: Int {
        switch self {
            case .high:
                return 0
            case .medium:
                return 1
            case .low:
                return 2
        }
    }

     static func ==(lhs: BookPriority, rhs: BookPriority) -> Bool {
        return lhs.sortOrder == rhs.sortOrder
    }

    static func <(lhs: BookPriority, rhs: BookPriority) -> Bool {
       return lhs.sortOrder < rhs.sortOrder
    }
}

struct Book: Hashable, Codable, Identifiable {

    var id: Int
    var title: String
    var author: String
    var about: String
    var priority: BookPriority
    var completed: Bool
    
    private var authorImageName: String
    var authorImage: Image {
        Image(authorImageName)
    }
    
    private var coverImageName: String
    var coverImage: Image {
        Image(coverImageName)
    }
}

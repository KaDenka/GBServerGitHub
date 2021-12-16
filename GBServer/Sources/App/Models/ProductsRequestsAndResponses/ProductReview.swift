//
//  File.swift
//  
//
//  Created by Denis Kazarin on 16.12.2021.
//

import Vapor

struct ProductReview: Content {
    var reviewId: Int
    var userName: String
    var productRating: Int
    var userReview: String
}

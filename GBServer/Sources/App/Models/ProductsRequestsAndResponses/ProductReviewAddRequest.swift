//
//  File.swift
//  
//
//  Created by Denis Kazarin on 16.12.2021.
//

import Vapor

struct ProductReviewAddRequest: Content {
    var productId: Int
    var userName: String
    var productRating: Int
    var userReview: String
}

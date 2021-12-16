//
//  File.swift
//  
//
//  Created by Denis Kazarin on 16.12.2021.
//

import Vapor

struct ProductReviewsListResponse: Content {
    var count: Int
    var productReviews: [ProductReview]
}

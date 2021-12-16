//
//  File.swift
//  
//
//  Created by Denis Kazarin on 16.12.2021.
//

import Vapor

struct ProductReviewCancelRequest: Content {
    var productId: Int
    var userName: String
    var reviewId: Int
}

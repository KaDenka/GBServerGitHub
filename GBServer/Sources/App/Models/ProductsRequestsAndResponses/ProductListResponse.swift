//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

struct ProductListResponse: Content {
    var count: Int
    var productList: [ProductResponse]
}

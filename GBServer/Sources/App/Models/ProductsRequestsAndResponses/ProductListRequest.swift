//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

struct ProductListRequest: Content {
    var pageNumber: Int
    var categoryId: Int
}

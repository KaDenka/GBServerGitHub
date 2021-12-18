//
//  CartOrderedProductsListResponse.swift
//  
//
//  Created by Denis Kazarin on 18.12.2021.
//

import Vapor

struct CartOrderedProductsListResponse: Content {
    var count: Int
    var productsInCartList: [ProductInCartResponse]
}

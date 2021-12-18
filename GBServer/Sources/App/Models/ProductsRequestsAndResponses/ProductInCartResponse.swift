//
//  File.swift
//  
//
//  Created by Denis Kazarin on 18.12.2021.
//

import Vapor

struct ProductInCartResponse: Content {
    var productName: String
    var productId: Int
    var productQuantity: Int
}

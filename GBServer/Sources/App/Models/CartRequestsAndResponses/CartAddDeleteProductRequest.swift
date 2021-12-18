//
//  CartAddDeleteProductRequest.swift
//  
//
//  Created by Denis Kazarin on 18.12.2021.
//

import Vapor

struct CartAddDeleteProductRequest: Content {
    var productId: Int
    var productQuantity: Int
}

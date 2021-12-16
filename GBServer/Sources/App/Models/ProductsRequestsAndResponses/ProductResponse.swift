//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

struct ProductResponse: Content {
    var productName: String
    var productPrice: Int
    var productDescription: String
}

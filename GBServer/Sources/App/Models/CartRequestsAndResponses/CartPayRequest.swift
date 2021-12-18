//
//  File.swift
//  
//
//  Created by Denis Kazarin on 18.12.2021.
//

import Vapor

struct CartPayRequest: Content {
    var userId: Int
    var userCreditCard: Int
}

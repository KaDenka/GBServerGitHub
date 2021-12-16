//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: User
}

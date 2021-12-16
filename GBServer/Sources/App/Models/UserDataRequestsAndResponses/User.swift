//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

struct User: Content {
    var userId: Int
    var userLogin: String
    var userName: String
    var userLastname: String
}

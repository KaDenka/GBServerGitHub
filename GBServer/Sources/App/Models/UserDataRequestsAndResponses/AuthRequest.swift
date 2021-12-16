//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

struct AuthRequest: Content {
    var userLogin: String
    var userPassword: String
}

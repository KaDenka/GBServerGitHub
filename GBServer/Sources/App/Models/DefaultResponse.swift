//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

struct DefaultResponse: Content {
    var result: Int
    var userMessage: String?
    var errorMessage: String?
}

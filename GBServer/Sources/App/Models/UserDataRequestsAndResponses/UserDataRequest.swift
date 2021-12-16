//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

struct UserDataRequest: Content {
    var userId: Int
    var userLogin: String
    var userPassword: String
    var userName: String
    var userLastname: String
    var userEmail: String
    var userCreditCard: String
    var userBio: String
}

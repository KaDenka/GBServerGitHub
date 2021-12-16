//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

class AuthController {
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(AuthRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LoginResponse(
            result: 1,
            user: User(
                userId: 123,
                userLogin: "Dumba",
                userName: "Donald",
                userLastname: "Trump"
            )
        )
        
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(AuthRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            userMessage: "Logout complete.",
            errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
}

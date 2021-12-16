//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

class UserDataController {
    func registration(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(UserDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            userMessage: "Registration complete successfully.",
            errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
    func changeData(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(UserDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            userMessage: "User data were changed successfully.",
            errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
}

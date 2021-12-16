//
//  File.swift
//  
//
//  Created by Denis Kazarin on 13.12.2021.
//

import Vapor

class ProductsController {
    func productList(_ req: Request) throws -> EventLoopFuture<ProductListResponse> {
        guard let body = try? req.content.decode(ProductListRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ProductListResponse(
            count: 2,
            productList: [
                ProductResponse(productName: "Mouse", productPrice: 1000, productDescription: "Good device"),
                ProductResponse(productName: "Gaming Mouse", productPrice: 5000, productDescription: "Good for gaming")
            ]
        )
        
        return req.eventLoop.future(response)
    }
    
    func product(_ req: Request) throws -> EventLoopFuture<ProductResponse> {
        guard let body = try? req.content.decode(ProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ProductResponse(
            productName: "Monitor 4K",
            productPrice: 15000,
            productDescription: "Nice device for developers")
        
        return req.eventLoop.future(response)
    }
    
    func productReviewsList(_ req: Request) throws -> EventLoopFuture<ProductReviewsListResponse> {
        guard let body = try? req.content.decode(ProductReviewsListRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = ProductReviewsListResponse(
            count: 3,
            productReviews: [
                ProductReview(reviewId: 12345, userName: "Mike", productRating: 3, userReview: "Not for proffesional using."),
                ProductReview(reviewId: 34562, userName: "Sonya", productRating: 5, userReview: "It's good for me due to I'm not using it too often."),
                ProductReview(reviewId: 56438, userName: "Kevin", productRating: 5, userReview: "I'm a gamer. So this product is absolutely comfortable for the gamers. Great!")
            ])
        
        return req.eventLoop.future(response)
    }
    
    func productReviewAdd(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(ProductReviewAddRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            userMessage: "User review was added successfully",
            errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
    func productReviewCancel(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(ProductReviewCancelRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            userMessage: "User review was canceled successfully",
            errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
}

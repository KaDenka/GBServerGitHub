//
//  File.swift
//  
//
//  Created by Denis Kazarin on 18.12.2021.
//

import Vapor

class CartController {
    func productAddToCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(CartAddDeleteProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            userMessage: "Product was added to Cart",
            errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
    func productDeleteFromCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(CartAddDeleteProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            userMessage: "Product was deleted from Cart",
            errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
    func getProductsInCartList(_ req: Request) throws -> EventLoopFuture<CartOrderedProductsListResponse> {
        guard let body = try? req.content.decode(CartOrderedProductsListRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = CartOrderedProductsListResponse(
            count: 2,
            productsInCartList: [
                ProductInCartResponse(productName: "Monitor 12K", productId: 452, productQuantity: 1),
                ProductInCartResponse(productName: "Gaming mouse", productId: 239, productQuantity: 4)
            ])
        
        return req.eventLoop.future(response)
    }
    
    func payProductsInCart(_ req: Request) throws -> EventLoopFuture<DefaultResponse> {
        guard let body = try? req.content.decode(CartPayRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DefaultResponse(
            result: 1,
            userMessage: "All products in Cart were payed successfully",
            errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
}

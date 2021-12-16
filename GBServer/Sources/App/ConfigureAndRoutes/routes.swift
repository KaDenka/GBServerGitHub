import Vapor

func routes(_ app: Application) throws {
    let authController = AuthController()
    let userDataController = UserDataController()
    let productsController = ProductsController()
    
    app.post("login", use: authController.login)
    app.post("logout", use: authController.logout)
    
    app.post("registration", use: userDataController.registration)
    app.post("changeData", use: userDataController.changeData)
    
    app.post("productList", use: productsController.productList)
    app.post("product", use: productsController.product)
    
    app.post("productReviewsList", use: productsController.productReviewsList)
    app.post("productReviewAdd", use: productsController.productReviewAdd)
    app.post("productReviewCancel", use: productsController.productReviewCancel)
    
}

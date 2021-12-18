import Vapor

func routes(_ app: Application) throws {
    let authController = AuthController()
    let userDataController = UserDataController()
    let productsController = ProductsController()
    let cartController = CartController()
    
    //MARK: - Login Logout Requests
    app.post("login", use: authController.login)
    app.post("logout", use: authController.logout)
    
    //MARK: - Registration ChangeUserData Requests
    app.post("registration", use: userDataController.registration)
    app.post("changeData", use: userDataController.changeData)
    
    //MARK: - Products Requests
    app.post("productList", use: productsController.productList)
    app.post("product", use: productsController.product)
    
    //MARK: - ProductReview Requests
    app.post("productReviewsList", use: productsController.productReviewsList)
    app.post("productReviewAdd", use: productsController.productReviewAdd)
    app.post("productReviewCancel", use: productsController.productReviewCancel)
    
    //MARK: - Cart Requests
    app.post("productAddToCart", use: cartController.productAddToCart)
    app.post("productDeleteFromCart", use: cartController.productDeleteFromCart)
    app.post("getProductsInCartList", use: cartController.getProductsInCartList)
    app.post("payProductsInCart", use: cartController.payProductsInCart)
    
}

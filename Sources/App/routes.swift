import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    // Controller
    let myController = MyController()
    let loginController = LoginController()
    
    // GET
    
    router.get("name", Int.parameter, use: myController.myName)
    
    router.get { req in
        return "It works!"
    }
    
    router.get("user", use: loginController.user)
    
    // POST
    router.post("login", use: loginController.login)
}

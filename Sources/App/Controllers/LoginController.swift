//
//  LoginController.swift
//  App
//
//  Created by Chirag Shah on 4/30/20.
//

import Foundation
import Vapor

final class LoginController {
    
    func login(req: Request) throws ->  Future<HTTPStatus>  {
        return try req.content.decode(LoginRequest.self).map(to: HTTPStatus.self) { loginRequest in
            print(loginRequest.email)
            print(loginRequest.password)
            return .ok
        }
    }
    
    func user(req: Request) -> User {
        return User(name: "Chirag", email: "chirag.crimson@gmail.com")
    }
    
}

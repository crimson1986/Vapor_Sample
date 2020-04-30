//
//  MyController.swift
//  App
//
//  Created by Chirag Shah on 4/30/20.
//

import Foundation
import Vapor

final class MyController {
    
    func myName(req: Request) throws -> String {
       
        let userID = try req.parameters.next(Int.self)
        return "User Chirag sha has requested user id #\(userID)"
        
    }
    
}

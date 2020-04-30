//
//  LoginRequest.swift
//  App
//
//  Created by Chirag Shah on 4/30/20.
//

import Foundation
import Vapor

struct LoginRequest: Content {
    var email: String
    var password: String
}

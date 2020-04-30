//
//  User.swift
//  App
//
//  Created by Chirag Shah on 4/30/20.
//

import Foundation
import Vapor

struct User: Content {
    let name: String
    let email: String
}

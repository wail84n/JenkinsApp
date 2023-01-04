//
//  User.swift
//  JenkinsApp
//
//  Created by wael almohammad on 31/12/2022.
//

import Foundation

struct User: Codable{
    let userId: Int
    let userName: String
    let userEmail: String
    let age: Int
    let www: String?
}

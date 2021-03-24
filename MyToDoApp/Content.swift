//
//  Content.swift
//  MyToDoApp
//
//  Created by Yoshiyuki Kato on 2021/03/25.
//

import Foundation

struct Content: Codable {
    let id: String
    let name: String
    let user: User
    let eyecatch: String
}

struct User: Codable {
    let name: String
}

//
//  Task.swift
//  MyToDoApp
//
//  Created by Yoshiyuki Kato on 2021/03/25.
//

import Foundation
import RealmSwift

final class Task: Object, Codable {
    @objc dynamic var id: String?
    @objc dynamic var title: String?

    override static func primaryKey() -> String? {
        return "id"
    }
}

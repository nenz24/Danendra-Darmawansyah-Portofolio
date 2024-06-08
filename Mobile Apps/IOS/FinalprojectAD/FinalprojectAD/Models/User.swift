//
//  User.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Danendra", profileImageUrl: nil, fullName: "Danendra Darmawansyah", bio: "Idaman janda Muda", email: "nendra@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Angga", profileImageUrl: nil, fullName: "nil", bio: "Wibu Sejati", email: "angga@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Vodka", profileImageUrl: nil, fullName: "vodka Joe junior", bio: "Idaman wibu Muda", email: "vodtol@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Charles", profileImageUrl: nil, fullName: "Charlie Hans burwos", bio: "wassup Nigg", email: "charr@gmail.com"),
        .init(id: NSUUID().uuidString, username: "pampam", profileImageUrl: nil, fullName: "pampampampam", bio: "crush on : @danen", email: "pam@gmail.com"),
    ]
}

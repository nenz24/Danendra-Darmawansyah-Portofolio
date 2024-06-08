//
//  Post.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let ownerUid: String
    let caption : String
    var likes: Int
    let imageUrl: String
    let timeStamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "hai",
              likes: 120,
              imageUrl: "feed2",
              timeStamp: Timestamp(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "wwww",
              likes: 100,
              imageUrl: "feed1",
              timeStamp: Timestamp(),
              user: User.MOCK_USERS[1]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "aku wibu",
              likes: 100,
              imageUrl: "feed3",
              timeStamp: Timestamp(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "nigga",
              likes: 69,
              imageUrl: "feed4",
              timeStamp: Timestamp(),
              user: User.MOCK_USERS[3]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "danen ganteng bgt",
              likes: 1000,
              imageUrl: "feed5",
              timeStamp: Timestamp(),
              user: User.MOCK_USERS[4]
             ),
        
    
    ]
}

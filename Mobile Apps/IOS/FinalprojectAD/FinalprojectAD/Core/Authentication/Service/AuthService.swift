//
//  AuthService.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase

protocol AuthenticationFormProtocol{
    var formIsValid: Bool{get}
}
class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentuser: User?
    static let shared = AuthService()
    
    init(){
        
        Task {try await loadUserData() }
    }
    @MainActor
    func login(withEmail email: String, password: String) async throws{
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await loadUserData()
        }catch{
            print("DEBUG: Failed \(error.localizedDescription)")
        }
    }
    @MainActor
    func createUser(email: String, password: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            await uploadUserData(uid: result.user.uid, username: username, email: email)
        }catch{
            print("DEBUG: Failed \(error.localizedDescription)")
        }
            
    }
    @MainActor
    func loadUserData() async throws {
        self.userSession = Auth.auth().currentUser
        guard let currentUid = userSession?.uid else {return}
        self.currentuser = try await UserService.fetchUser(withUid: currentUid)
    }
    
    func signout(){
        try? Auth.auth().signOut()
        self.userSession = nil
        self.currentuser = nil
    }
    private func uploadUserData(uid: String, username: String, email: String) async {
        let user = User(id: uid, username: username, email: email)
        self.currentuser = user
        guard let encodedUser = try? Firestore.Encoder().encode(user) else {return}
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
    }
    
}

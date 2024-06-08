//
//  LoginViewModel.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
       try await AuthService.shared.login(withEmail: email, password: password)
    }
    
    
    
}

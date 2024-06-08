//
//  ContentViewModel.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import Foundation
import Firebase
import Combine


class ContentviewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
   
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init(){
        setupSubscribers()
    }
    
    func setupSubscribers(){
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
        
        service.$currentuser.sink { [weak self] currentUser in
            self?.currentUser = currentUser
        }
        .store(in: &cancellables)
    }
}

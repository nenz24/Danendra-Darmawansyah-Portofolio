//
//  SearchViewModel.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task {try await fetchAllusers() }
    }
    @MainActor
    func fetchAllusers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}

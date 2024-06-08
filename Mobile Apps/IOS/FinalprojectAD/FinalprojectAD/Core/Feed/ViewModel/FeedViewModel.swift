//
//  FeedViewModel.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 03/07/23.
//

import Foundation
import Firebase


class feedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws{
        self.posts = try await PostService.fetchFeedPosts()
    }
}

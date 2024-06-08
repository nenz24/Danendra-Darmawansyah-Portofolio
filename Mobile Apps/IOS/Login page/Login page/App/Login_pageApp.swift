//
//  Login_pageApp.swift
//  Login page
//
//  Created by Kleo Handayani on 22/06/23.
//

import SwiftUI
import Firebase

@main
struct Login_pageApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

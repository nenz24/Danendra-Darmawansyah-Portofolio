//
//  ContentView.swift
//  Login page
//
//  Created by Kleo Handayani on 22/06/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
            Group{
                if viewModel.userSession != nil {
                    ProfileView()
                } else{
                    LoginView()
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

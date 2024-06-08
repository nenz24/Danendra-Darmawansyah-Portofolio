//
//  ProfileVIew.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import SwiftUI

struct ProfileVIew: View {
    
    let user: User
    
    var body: some View {
            ScrollView{
                //header
             ProfileHeaderView(user: user)
                
                //post
                
                PostGridview(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
       
    }
}

struct ProfileVIew_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVIew(user: User.MOCK_USERS[1])
    }
}

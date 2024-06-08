//
//  ProfileView.swift
//  Login page
//
//  Created by Kleo Handayani on 23/06/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        if let user = viewModel.currentUser{
            List{
                Section{
                    HStack {
                        Text(user.initials)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 4){
                            Text(user.fullname)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                            
                            Text(user.email)
                                .font(.footnote)
                                .accentColor(.gray)
                        }
                    }
                }
                
                Section("General"){
                    HStack{
                        SettingView(imageName: "gear",
                                    title: "Version",
                                    tintColor: Color(.systemGray))
                        
                        Spacer()
                        Text("1.0.8")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                }
                
                Section("Account"){
                    Button {
                        viewModel.signOut()
                    } label: {
                        SettingView(imageName: "arrow.left.circle.fill",
                                    title: "Sign out",
                                    tintColor: .red)
                    }
                    Button {
                        print("Delete Account")
                    } label: {
                        SettingView(imageName: "xmark.circle.fill",
                                    title: "Delete Account",
                                    tintColor: .red)
                        
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

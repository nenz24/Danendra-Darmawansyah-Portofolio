//
//  EditProfileView.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: EditProfileViewModels
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: EditProfileViewModels(user: user))
    }
    
    var body: some View {
        VStack{
            //toolbar
            VStack {
                HStack{
                    Button("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button {
                        Task {try await viewModel.updateUserData()
                            dismiss()}
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }

                }
                .padding(.horizontal)
                
                Divider()
            }
            //edit pict
            
            PhotosPicker(selection: $viewModel.selectedImage) {
                VStack {
                    if let image = viewModel.profileImage{
                        image
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                            .background(.gray)
                        .clipShape(Circle())
                        
                    }else{
                        CircularProfileImageView(user: viewModel.user, size: .large)
                        
                    }
                    Text("Edit profile picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Divider()
                }
            }
            .padding(.vertical, 8)
            
            //edit info
            
            VStack{
                EditProfileRowView(title: "Name", placeholder: "Enter your name", text: $viewModel.fullname)
                EditProfileRowView(title: "Bio", placeholder: "Enter your bio", text: $viewModel.bio)
            }
            .padding(.horizontal)
            Spacer()
        }
        
    }
}

struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack{
            Text(title)
                .padding(.leading,3)
                .frame(width: 100, alignment: .leading)
            
            VStack{
                TextField(placeholder, text: $text)
                
                Divider()
            }
        }
        .font(.subheadline)
        .frame(height: 36)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(user: User.MOCK_USERS[0])
    }
}

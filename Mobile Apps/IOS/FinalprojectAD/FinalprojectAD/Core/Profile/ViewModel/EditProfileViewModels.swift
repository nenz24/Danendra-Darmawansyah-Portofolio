//
//  EditProfileViewModels.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import PhotosUI
import Firebase
import SwiftUI

@MainActor
class EditProfileViewModels: ObservableObject {
    @Published var user: User
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task {await loadImage(fromItem: selectedImage)} }
    }
    @Published var profileImage: Image?
    
    @Published var fullname = ""
    @Published var bio = ""
    
    private var uiImage: UIImage?
    
    init(user: User){
        self.user = user
        
        if let fullname = user.fullName {
            self.fullname = fullname
        }
        if let bio = user.bio {
            self.bio = bio
        }
    }
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else {return}
        
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        self.uiImage = uiImage
        self.profileImage = Image(uiImage: uiImage)
        
    }
    
    func updateUserData() async throws{
        //update profile image if changes
        
        var data = [String: Any]()
        
        if let uiImage = uiImage {
           let imageUrl = try? await ImageUplouder.uploudImage(image: uiImage)
            data["profileimageurl"] = imageUrl
        }
        
        //update name if changes
        if !fullname.isEmpty && user.fullName != fullname {
            data["fullname"] = fullname
        }
        
        //update bio if change
        if !bio.isEmpty && user.bio != bio {
            data["bio"] = bio

        }
        
        if !data.isEmpty {
            try await Firestore.firestore().collection("users").document(user.id).updateData(data)
        }
    }
}

//
//  ImageUplouder.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 03/07/23.
//

import UIKit
import Firebase
import FirebaseStorage

struct ImageUplouder {
    static func uploudImage(image: UIImage) async throws -> String? {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else {return nil}
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(filename)")
        
        do{
            let _ = try await ref.putDataAsync(imageData)
            let url = try await ref.downloadURL()
            return url.absoluteString
        }catch{
            print("DEBUG: failed uploud \(error.localizedDescription)")
            return nil
        }
    }
}

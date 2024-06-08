//
//  UploudPostView.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import SwiftUI
import PhotosUI

struct UploudPostView: View {
    @State private var caption = ""
    @State private var imagePickerPrensented = false
    @StateObject var viewModel = UploudViewModel()
    @Binding var tabIndex: Int
    var body: some View {
        VStack{
            //action tool
            HStack{
                Button {
                    clearPostDataAndReturnToFeed()
                } label: {
                    Text("Cancel")
                }
                Spacer()
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                Button {
                    Task {
                        try await viewModel.uploadPost(caption: caption)
                        clearPostDataAndReturnToFeed()
                    }
                } label: {
                    Text("Uploud")
                        .fontWeight(.semibold)
                }

            }
            .padding(.horizontal)
            //post and caption
            HStack(spacing: 8){
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
                
            }
            .padding()
            
            Spacer()
        }
        .onAppear {
            imagePickerPrensented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPrensented, selection: $viewModel.selectedImage)
    }
    
    func clearPostDataAndReturnToFeed() {
        caption = ""
        viewModel.selectedImage = nil
        viewModel.postImage = nil
        tabIndex = 0
    }
}

struct UploudPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploudPostView(tabIndex: .constant(0))
    }
}

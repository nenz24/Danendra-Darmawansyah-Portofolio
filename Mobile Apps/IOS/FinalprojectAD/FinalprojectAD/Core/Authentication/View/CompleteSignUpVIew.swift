//
//  CompleteSignUpVIew.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import SwiftUI

struct CompleteSignUpVIew: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel

    var body: some View {
        VStack(spacing: 12){
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 100)
            Text("Welcome to AD Apps, \(viewModel.username)")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using AD Apps")
                .font(.footnote)
                
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                Task {try await                 viewModel.createUser() }
            } label: {
                Text("Complete Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct CompleteSignUpVIew_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpVIew()
    }
}

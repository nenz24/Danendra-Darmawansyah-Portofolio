//
//  CreateUsernameVIew.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import SwiftUI

struct CreateUsernameVIew: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12){
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick your username for your account. You can always change it layer")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $viewModel.username)
                .autocapitalization(.none)
                .modifier(ADTextFieldModifier())
            
            
            NavigationLink {
                CreatePasswordVIew()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 100, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(100)
            }
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.5)
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
extension CreateUsernameVIew: AuthenticationFormProtocol{
    var formIsValid: Bool{
        return !viewModel.username.isEmpty
    }
}
    struct CreateUsernameVIew_Previews: PreviewProvider {
        static var previews: some View {
            CreateUsernameVIew()
        }
    }


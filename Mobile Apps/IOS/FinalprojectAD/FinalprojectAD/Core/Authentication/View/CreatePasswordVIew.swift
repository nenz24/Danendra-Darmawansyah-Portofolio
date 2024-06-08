//
//  CreatePasswordVIew.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import SwiftUI

struct CreatePasswordVIew: View {
    @EnvironmentObject var viewModel: RegistrationViewModel
    @Environment(\.dismiss) var dismiss
    @State var showPassword: Bool = false
    
    var body: some View {
        VStack(spacing: 12){
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            ZStack {
                HStack{
                    if showPassword {
                        TextField("Enter your password", text: $viewModel.password)
                            .modifier(ADTextFieldModifier())
                        
                    } else {
                        SecureField("Enter your password", text: $viewModel.password)
                            .modifier(ADTextFieldModifier())
                        
                    }
                    
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                        .zIndex(1)
                        .padding(.horizontal, 5)
                }.offset(x:140,y:0)

                
            }
            
            NavigationLink {
               CompleteSignUpVIew()
                   .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 250, height: 44)
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
extension CreatePasswordVIew: AuthenticationFormProtocol{
    var formIsValid: Bool{
        return !viewModel.email.isEmpty
        && viewModel.email.contains("@")
        && !viewModel.password.isEmpty
        && viewModel.password.count > 6
        
    }
}
struct CreatePasswordVIew_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordVIew()
    }
}

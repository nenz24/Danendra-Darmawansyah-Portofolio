//
//  SignUpView.swift
//  Login page
//
//  Created by Kleo Handayani on 22/06/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        ZStack{
            Image("bg2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                //foto
                Image("logo2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .padding(.vertical, 32)
                
                Text("Create An Account")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                VStack(spacing: 24){
                    InputView(text: $fullname,
                              title: "UserName",
                              placeholder: "Enter your username")
                    
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecuredField: true)
                    
                    ZStack(alignment: .trailing){
                        InputView(text: $confirmPassword,
                                  title: "Confirm Password",
                                  placeholder: "Confirm your password",
                                  isSecuredField: true)
                        
                        if !password.isEmpty && !confirmPassword.isEmpty{
                            if password == confirmPassword {
                                Image(systemName: "checkmark.circle.fill")
                                    .imageScale(.large)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(.systemGreen))
                            } else{
                                Image(systemName: "xmark.circle.fill")
                                    .imageScale(.large)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(.systemRed))
                                
                            }
                        }
                    }
                    
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                Button {
                    Task {
                        try await viewModel.createUser(withEmail: email,
                                                       password: password,
                                                       fullname: fullname)
                    }
                } label: {
                    HStack{
                        Text("Sign Up")
                            .fontWeight(.regular)
                        //Image(systemName: "arrow.right")
                    }
                    .padding()
                    .frame(width: 100)
                    .background(Color.blue)
                    .cornerRadius(500)
                    .foregroundColor(Color.white)
                }
                .padding()
                .background(Color.white)
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.5)
                .cornerRadius(20)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 4){
                        Text("Already have an account?")
                        Text("Sign In")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 15))
                }
                
            }
            .padding(.horizontal, 65)
        }
    }
}
// MARK: - AuthenticationFormProtocol

extension SignUpView: AuthenticationFormProtocol{
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && confirmPassword == password
        && !fullname.isEmpty
        
    }
    
     
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

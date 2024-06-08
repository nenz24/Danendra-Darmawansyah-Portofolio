//
//  LoginView.swift
//  Login page
//
//  Created by Kleo Handayani on 22/06/23.
//

import SwiftUI

struct LoginView: View{
    @State private var email = ""
    @State private var password = ""
    @State var showPassword: Bool = false
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View{
        NavigationStack{
            ZStack {
                Image("bg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    VStack {
                        Image("logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 120)
                            .padding(.vertical, 32)
                        
                        Text("LOG IN")
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        //form
                        VStack(spacing: 24) {
                            InputView(text: $email, title: "Email Address", placeholder: "Enter your email")
                               
                                .autocapitalization(.none)
                                .padding(.horizontal, 55)
                            
                            HStack {
                                Group {
                                    if showPassword {
                                        InputView(text: $password, title: "Password", placeholder: "Enter your password")
                                            
                                    } else {
                                        InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecuredField: true)
                                
                                    }
                                        
                                }
                                Button{
                                    showPassword.toggle()
                                } label: {
                                    Image(systemName: showPassword ? "eye.slash" : "eye")
                                        .foregroundColor(.gray)
                                        .zIndex(1)
                                        .padding(.horizontal, 5)
                                }
                                .padding(.trailing, 8)
                            }
                            .padding(.horizontal,55)
                        }
                        .padding(.horizontal)
                        .padding(.top, 30)
                        
                        //sign in
                        Button {
                            Task {
                                try await viewModel.signIn(withEmail: email, password: password)
                            }
                        } label: {
                            HStack {
                                Text("Sign In")
                                    .fontWeight(.regular)
                            }
                            .padding()
                            .frame(width: 100)
                            .background(Color.white)
                            .cornerRadius(50)
                            .foregroundColor(Color.blue)
                        }
                        .padding()
                        .disabled(!formIsValid)
                        .opacity(formIsValid ? 1.0 : 0.5)
                        .cornerRadius(20)
                        
                        Spacer()
                        //sign up
                        NavigationLink {
                            SignUpView().navigationBarBackButtonHidden(true)
                                        } label: {
                                            HStack(spacing: 4){
                                                Text("Don't have an account?")
                                                    .foregroundColor(.white)
                                                Text("Sign Up")
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                            }
                            .font(.system(size: 15))
                        }
                    }
                    .padding(.horizontal)
                    .zIndex(1)
                    Spacer()
                }
            }
        }
    }
}
    // MARK: - AuthenticationFormProtocol
    
    extension LoginView: AuthenticationFormProtocol{
        var formIsValid: Bool {
            return !email.isEmpty
            && email.contains("@")
            && !password.isEmpty
            && password.count > 5
        }
        
        
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }


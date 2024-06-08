//
//  LoginView.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 02/07/23.
//

import SwiftUI

struct LoginView: View {
 
    @StateObject var viewModel = LoginViewModel()
    @State var showPassword: Bool = false
    var body: some View {
        NavigationStack{
            ZStack {
                VStack{
                    //lggo
                    VStack(spacing: 15) {
                        LoginHeaderView(tittle1: "Hello,", tittle2: "Welcome to AD apps")
                        
                        Image("logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                    }
                    //text
                    VStack{
                        TextField("Enter your email", text: $viewModel.email)
                            .autocapitalization(.none)
                            .modifier(ADTextFieldModifier())
                        
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
                    }
                    
                    Button {
                        print("show forgot password")
                    } label: {
                        Text("Forgot Password")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .padding(.trailing, 28)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)

                    Button {
                        Task {try await                     viewModel.signIn() }
                    } label: {
                        Text("Log In")
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
                    
                    Divider()
                    
                    NavigationLink {
                        AddEmailView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 3){
                            Text("Don't have an account?")
                            
                            Text("Sign Up")
                                .fontWeight(.semibold)
                        }
                        .font(.footnote)
                    }
                    .padding(.vertical, 16)
                }
                .ignoresSafeArea()
            }
        }
        
    }
}
extension LoginView: AuthenticationFormProtocol{
    var formIsValid: Bool{
        return !viewModel.email.isEmpty
        && viewModel.email.contains("@")
        && !viewModel.password.isEmpty
        && viewModel.password.count > 6
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

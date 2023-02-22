//
//  LoginViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 16/02/23.

import SwiftUI
import AuthenticationServices

struct LoginFormView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var showDetails = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackground()
                VStack(spacing:20) {
                    HStack {
                        Image("Image")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 100)
                    }
                    Text("I Need Help")
                        .font(.system(size:40, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color.white.opacity(0.93))
                        .cornerRadius(15)
                    HStack {
                        if isPasswordVisible {
                            TextField("Password", text: $password)
                        } else {
                            SecureField("Password", text: $password)
                        }
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye.fill" : "eye.slash.fill")
                        }
                        .padding(.trailing, 8)
                        .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white.opacity(0.93))
                    .cornerRadius(15)
                    HStack {
                        Button(action:{/*azione*/}) {
                            Text("Forgot password?")
                                .bold()
                                .italic()
                                .underline()
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.orange)
                            .frame(width:150, height:70)
                            .padding(.horizontal)
                            .overlay(
                                NavigationLink(destination: TabBarUIView()) {
                                    HStack {
                                        Text("Login")
                                            .font(.largeTitle.bold())
                                            .foregroundColor(.white)
                                    }
                                }
                            )
                    }
                    HStack {
                        Text("Or")
                            .foregroundColor(.white)
                            .bold()
                    }
                    ZStack {
                        VStack {
                            // Pulsante "Continue with Apple"
                            SignInWithAppleButton(
                                onRequest: { request in
                                    // Imposta le richieste di accesso necessarie qui
                                },
                                onCompletion: { result in
                                    // Gestisci il risultato del login con Apple qui
                                }
                            )
                            .frame(width: 280, height: 50)
                            .padding()
                            
                            // Pulsante "Continue with Google"
                            Button(action: {
                            }) {
                                HStack {
                                    Image("google")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: .infinity, height: 20)
                                    Text("Sign in with Google")
                                }
                            }
                            .frame(width: 280, height: 50)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(10)
                            .bold()
                        }
                    }
                    Spacer()
                    HStack {
                        Text("Not registered?")
                            .foregroundColor(.white)
                        NavigationLink(destination: SignUpViewController()) {
                            HStack {
                                Text("Sign Up")
                                    .bold()
                                    .italic()
                                    .underline()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView()
        
    }
}

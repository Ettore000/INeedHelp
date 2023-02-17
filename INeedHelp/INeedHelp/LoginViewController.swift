//
//  LoginViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 16/02/23.

import SwiftUI

struct LoginFormView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var continueWith: String = ""

    var body: some View {
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
                    Button(action: {/*azione*/}) {
                        Text("Login")
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .frame(width:150, height:70)
                            .background(Color.orange)
                            .cornerRadius(15)
                            .padding(.horizontal)
                    }
                }
                HStack {
                    Text("Or")
                        .foregroundColor(.white)
                        .bold()
                }
                ZStack {
                    TextField("", text: $continueWith)
                        .padding()
                        .background(Color.white.opacity(0.93))
                        .font(.largeTitle)
                        .frame(width:200)
                        .cornerRadius(40)
                    VStack {
                        Text("|")
                    }
                    HStack {
                        Button(action:{/*azione*/}) {
                            Image("Image 1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                                .padding(.horizontal)
                        }
                        Button(action:{/*azione*/}) {
                            Image("Image 2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 53, height: 53)
                                .padding(.horizontal)
                        }
                    }
                }
                Spacer()
                HStack {
                    Text("Not registered?")
                        .foregroundColor(.white)
                    Button(action:{/*azione*/}) {
                        Text("Sign Up")
                            .bold()
                            .italic()
                            .underline()
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
        }
    }
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView()

    }
}

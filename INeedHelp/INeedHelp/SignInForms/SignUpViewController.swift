//
//  SignUpViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 16/02/23.
//

import SwiftUI

struct SignUpViewController: View {
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var age: String = ""
    @State private var type: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""

    var body: some View {
        ZStack {
            GradientBackground()
            VStack(spacing:20) {
                Text("Sign Up")
                    .font(.system(size:40, weight: .bold, design: .default))
                    .foregroundColor(.white)
                TextField("Name*", text: $name)
                    .padding()
                    .background(Color.white.opacity(0.93))
                    .cornerRadius(15)
                TextField("Surname", text: $surname)
                    .padding()
                    .background(Color.white.opacity(0.93))
                    .cornerRadius(15)
                TextField("Age", text: $age)
                    .padding()
                    .background(Color.white.opacity(0.93))
                    .cornerRadius(15)
                TextField("Email*", text: $email)
                    .padding()
                    .background(Color.white.opacity(0.93))
                    .cornerRadius(15)
                VStack {
                    Text("You are an:")
                        .foregroundColor(.white)
                        .bold()
                    HStack {
                        Button(action: {/*azione*/}) {
                            Text("Asker")
                                .padding()
                                .background(Color.white.opacity(0.93))
                                .cornerRadius(15)
                        }
                        Text("Or")
                            .padding()
                            .foregroundColor(.white)
                        Button(action: {/*azione*/}) {
                            Text("Expert")
                                .padding()
                                .background(Color.white.opacity(0.93))
                                .cornerRadius(15)
                        }
                    }
                }
                TextField("Password*", text: $password)
                    .padding()
                    .background(Color.white.opacity(0.93))
                    .cornerRadius(15)
                TextField("Confirm password*", text: $confirmPassword)
                    .padding()
                    .background(Color.white.opacity(0.93))
                    .cornerRadius(15)
                HStack {
                    Text("* Obligatory")
                        .bold()
                        .italic()
                        .foregroundColor(.white)
                    Spacer()
                }
                HStack {
                    Button(action: {/*azione*/}) {
                        Text("Sign Up")
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .frame(width:150, height:70)
                            .background(Color.orange)
                            .cornerRadius(15)
                            .padding(.horizontal)
                    }
                }
            }
            .padding()
        }
    }
}

struct SignUpViewController_Previews: PreviewProvider {
    static var previews: some View {
        SignUpViewController()
    }
}


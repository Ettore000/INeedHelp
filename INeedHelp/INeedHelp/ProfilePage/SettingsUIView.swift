//
//  SettingsViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct SettingsUIView: View {
    let settingswidth: Double = 372
    let settingsheight: Double = 40
    let cornerRadius: CGFloat = 15
    let opacity: Double = 0.93
    
    @State var username = ""
    @State var email = ""
    @State var address = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackground()
                VStack {
                    HStack {
                        Text("Assistance")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.horizontal)
                        Spacer()
                    }
                    NavigationLink(destination: SendAFeedbackUIView()) {
                        HStack {
                            RoundedRectangle(cornerRadius: cornerRadius)
                                .fill(Color.white)
                                .opacity(opacity)
                                .frame(width: settingswidth, height: settingsheight)
                                .overlay(
                                    HStack {
                                        Text("Send a Feedback")
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                            .padding(.horizontal)
                                        Spacer()
                                        chevronRightInTheButton()
                                    }
                                )
                        }
                    }
                    HStack {
                        Text("Account info's")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: settingswidth, height: settingsheight)
                            .overlay(
                                NavigationLink(destination: ProfilePhotoUIView()) {
                                    HStack {
                                        Text("Profile's photo")
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                            .padding(.horizontal)
                                        Spacer()
                                        chevronRightInTheButton()
                                    }
                                }
                            )
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: settingswidth, height: settingsheight)
                            .overlay(
                                HStack {
                                    Text("Username")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .padding(.horizontal)
                                    Spacer()
                                    Text(username)
                                    chevronRightInTheButton()
                                }
                            )
                            .onTapGesture { // Add a tap gesture to show a pop-up when the user taps the rounded rectangle
                                let alertController = UIAlertController(title: "Enter username", message: nil, preferredStyle: .alert)
                                alertController.addTextField { textField in
                                    textField.placeholder = "Username"
                                }
                                alertController.addAction(UIAlertAction(title: "OK", style: .default) { _ in
                                    if let newUsername = alertController.textFields?.first?.text {
                                        username = newUsername // Update the username variable with the user's input
                                    }
                                })
                                alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                                   let viewController = windowScene.windows.first?.rootViewController {
                                    viewController.present(alertController, animated: true, completion: nil)
                                }
                            }
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: settingswidth, height: settingsheight)
                            .overlay(
                                HStack {
                                    Text("Email")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .padding(.horizontal)
                                    Spacer()
                                    Text(email)
                                    chevronRightInTheButton()
                                }
                            )
                            .onTapGesture { // Add a tap gesture to show a pop-up when the user taps the rounded rectangle
                                let alertController = UIAlertController(title: "Enter email", message: nil, preferredStyle: .alert)
                                alertController.addTextField { textField in
                                    textField.placeholder = "Email"
                                }
                                alertController.addAction(UIAlertAction(title: "OK", style: .default) { _ in
                                    if let newEmail = alertController.textFields?.first?.text {
                                        email = newEmail // Update the email variable with the user's input
                                    }
                                })
                                alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                                   let viewController = windowScene.windows.first?.rootViewController {
                                    viewController.present(alertController, animated: true, completion: nil)
                                }
                                
                            }
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: settingswidth, height: settingsheight)
                            .overlay(
                                HStack {
                                    Text("Address")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .padding(.horizontal)
                                    Spacer()
                                    Text(address)
                                    chevronRightInTheButton()
                                }
                            )
                            .onTapGesture { // Add a tap gesture to show a pop-up when the user taps the rounded rectangle
                                let alertController = UIAlertController(title: "Enter address", message: nil, preferredStyle: .alert)
                                alertController.addTextField { textField in
                                    textField.placeholder = "Address"
                                }
                                alertController.addAction(UIAlertAction(title: "OK", style: .default) { _ in
                                    if let newAddress = alertController.textFields?.first?.text {
                                        address = newAddress // Update the username variable with the user's input
                                    }
                                })
                                alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                                        let viewController = windowScene.windows.first?.rootViewController {
                                            viewController.present(alertController, animated: true, completion: nil)
                                        }
                            }
                    }
                    HStack {
                        Text("Account info's")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: settingswidth, height: settingsheight)
                            .overlay(
                                NavigationLink(destination: AdvancedOptionsUIView()) {
                                    HStack {
                                        Text("Advanced options")
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                            .padding(.horizontal)
                                        Spacer()
                                        chevronRightInTheButton()
                                        
                                    }
                                }
                            )
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: settingswidth, height: settingsheight)
                            .overlay(
                                NavigationLink(destination: RateOurAppUIView()) {
                                    HStack {
                                        Text("Rate our App")
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                            .padding(.horizontal)
                                        Spacer()
                                        chevronRightInTheButton()
                                    }
                                }
                            )
                    }
                }
            }
        }
    }
}

struct chevronRightInTheButton: View {
    var body: some View {
        Image(systemName: "chevron.right")
            .foregroundColor(.secondary)
            .padding(.horizontal)
    }
}

struct SettingsUIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUIView()
    }
}

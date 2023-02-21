//
//  SettingsViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct SettingsViewController: View {
    let settingswidth: Double = 372
    let settingsheight: Double = 40
    let cornerRadius: CGFloat = 15
    let opacity: Double = 0.93
    
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
                                HStack {
                                    Text("Profile photo")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .padding(.horizontal)
                                    Spacer()
                                    chevronRightInTheButton()
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
                                    chevronRightInTheButton()
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
                                    Text("Email")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .padding(.horizontal)
                                    Spacer()
                                    chevronRightInTheButton()
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
                                    Text("Address")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .padding(.horizontal)
                                    Spacer()
                                    chevronRightInTheButton()
                                }
                            )
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
                                HStack {
                                    Text("Advanced options")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .padding(.horizontal)
                                    Spacer()
                                    chevronRightInTheButton()
                                    
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
                                    Text("Rate our App")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .padding(.horizontal)
                                    Spacer()
                                    chevronRightInTheButton()
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

struct SettingsViewController_Previews: PreviewProvider {
    static var previews: some View {
        SettingsViewController()
    }
}

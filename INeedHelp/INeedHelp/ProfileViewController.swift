//
//  ProfileViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 20/02/23.
//

import SwiftUI

struct ProfileViewController: View {
    let cornerRadius: CGFloat = 35.0
    let opacity: Double = 0.93
    let fourBlockSize: Double = 175
    let fontSizeForDetail: Double = 20
    
    var body: some View {
        ZStack {
            GradientBackground()
            ZStack {
                VStack {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(Color.white)
                        .opacity(opacity)
                        .frame(width: 361, height: 326)
                        .padding(.bottom)
                        .overlay(
                            VStack {
                                HStack {
                                    Image("fp2")
                                        .resizable()
                                        .frame(width: 125, height: 125)
                                        .clipShape(Circle())
                                }
                                HStack {
                                    Text("John Doe")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .font(.largeTitle.bold())
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 162/255, blue: 255/255, alpha: 1)))
                                        .font(.title)
                                }
                                HStack {
                                    Text("UI Designer")
                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        .font(.title2)
                                }
                                HStack {
                                    VStack {
                                        Text("75K")
                                            .font(.system(size: fontSizeForDetail))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        Text("Followers")
                                            .font(.system(size: fontSizeForDetail))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                    }.padding()
                                    VStack {
                                        Text("16K")
                                            .font(.system(size: fontSizeForDetail))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        Text("Following")
                                            .font(.system(size: fontSizeForDetail))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                    }.padding()
                                    VStack {
                                        Text("600")
                                            .font(.system(size: fontSizeForDetail))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                        Text("Projects")
                                            .font(.system(size: fontSizeForDetail))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                    }.padding()
                                }
                            }
                        )
                    HStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: fourBlockSize, height: fourBlockSize)
                            .overlay(
                                VStack {
                                    HStack {
                                        Image(systemName: "gearshape")
                                            .font(.system(size: 50))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 162/255, blue: 255/255, alpha: 1)))
                                            .font(.title)
                                            .padding()
                                            .onTapGesture {
                                                //Vai nella schermata di impostazioni
                                            }
                                        Spacer()
                                    }
                                    HStack {
                                        Text("Settings")
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                            .font(.largeTitle)
                                    }
                                    Spacer()
                                }
                            )
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: fourBlockSize, height: fourBlockSize)
                            .overlay(
                                VStack {
                                    HStack {
                                        Image(systemName: "sun.min")
                                            .font(.system(size: 50))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 162/255, blue: 255/255, alpha: 1)))
                                            .font(.title)
                                            .padding()
                                        Spacer()
                                    }
                                    HStack {
                                        Text("Theme")
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                            .font(.largeTitle)
                                    }
                                    Spacer()
                                }
                            )
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: fourBlockSize, height: fourBlockSize)
                            .overlay(
                                VStack {
                                    HStack {
                                        Image(systemName: "bookmark")
                                            .font(.system(size: 50))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 162/255, blue: 255/255, alpha: 1)))
                                            .font(.title)
                                            .padding()
                                        Spacer()
                                    }
                                    HStack {
                                        Text("Saved")
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                            .font(.largeTitle)
                                    }
                                    Spacer()
                                }
                            )
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.white)
                            .opacity(opacity)
                            .frame(width: fourBlockSize, height: fourBlockSize)
                            .overlay(
                                VStack {
                                    HStack {
                                        Image(systemName: "book.closed")
                                            .font(.system(size: 50))
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 162/255, blue: 255/255, alpha: 1)))
                                            .font(.title)
                                            .padding()
                                        Spacer()
                                    }
                                    HStack {
                                        Text("Courses")
                                            .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                            .font(.largeTitle)
                                    }
                                    Spacer()
                                }
                                
                            )
                    }
                }
            }
        }
    }
}

struct ProfileViewController_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewController()
    }
}

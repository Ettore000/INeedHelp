//
//  DiscoverUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct DiscoverUIView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackground()
                ZStack {
                    VStack {
                        HStack {
                            Text("Discover")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                            Spacer()
                        }
                        HStack {
                            Text("Barra di ricerca")
                                .foregroundColor(.white)
                        }
                        Spacer()
                        RoundedRectangle(cornerRadius: 35)
                            .fill(Color.white)
                            .ignoresSafeArea()
                            .overlay(
                                VStack {
                                    HStack {
                                        RoundedRectangle(cornerRadius: 35)
                                            .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                            .ignoresSafeArea()
                                            .frame(width: 385, height: 52)
                                            .overlay(
                                                VStack {
                                                    HStack {
                                                        Text("Popular")
                                                            .padding(.horizontal)
                                                        Spacer()
                                                        Text("Most recent")
                                                        Spacer()
                                                        Text("For you")
                                                            .padding(.horizontal)
                                                    }
                                                }
                                                    .padding()
                                            )
                                    }
                                    HStack {
                                        Text("Popular Topics")
                                            .font(.title)
                                        Spacer()
                                    }
                                    .padding(.top, 30)
                                    .padding(.horizontal)
                                    HStack {
                                        Spacer()
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.purple)
                                            .ignoresSafeArea()
                                            .frame(width: 135, height: 98)
                                            .overlay(
                                                VStack {
                                                    HStack {
                                                        Text("Food")
                                                            .font(.largeTitle)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text("200 posts")
                                                        Spacer()
                                                    }
                                                }
                                                    .foregroundColor(.white)
                                                    .padding()
                                            )
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.purple)
                                            .ignoresSafeArea()
                                            .frame(width: 135, height: 98)
                                            .overlay(
                                                VStack {
                                                    HStack {
                                                        Text("Art")
                                                            .font(.largeTitle)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text("50 posts")
                                                        Spacer()
                                                    }
                                                }
                                                    .foregroundColor(.white)
                                                    .padding()
                                            )
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.purple)
                                            .ignoresSafeArea()
                                            .frame(width: 135, height: 98)
                                            .overlay(
                                                VStack {
                                                    HStack {
                                                        Text("Sport")
                                                            .font(.largeTitle)
                                                        Spacer()
                                                    }
                                                    HStack {
                                                        Text("110 posts")
                                                        Spacer()
                                                    }
                                                }
                                                    .foregroundColor(.white)
                                                    .padding()
                                            )
                                    }
                                    HStack {
                                        Text("Trendings Posts")
                                            .font(.title)
                                        Spacer()
                                    }
                                    .padding(.top, 30)
                                    .padding(.horizontal)
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                        .ignoresSafeArea()
                                        .frame(width: 313, height: 134)
                                        .overlay(
                                            VStack {
                                                HStack {
                                                    Text("Marco Abbate")
                                                        .font(.title2)
                                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                                        .bold()
                                                    Spacer()
                                                }
                                                HStack {
                                                    Text("My cat is running everywhere in the house")
                                                        .font(.title3)
                                                        .foregroundColor(Color(UIColor.init(red: 0/255, green: 77/255, blue: 128/255, alpha: 1)))
                                                    Spacer()
                                                }
                                                Spacer()
                                            }
                                                .foregroundColor(.white)
                                                .padding()
                                        )
                                }
                                    .padding(.vertical)
                            )
                    }
                }
            }
        }
    }
}

struct DiscoverUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverUIView()
    }
}

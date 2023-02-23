//
//  DiscoverUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct DiscoverUIView: View {
    @State private var searchText: String = ""
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
                        SearchBar(text: $searchText)
                            .padding(.horizontal)
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
                                    ScrollView(.horizontal) {
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
                                            RoundedRectangle(cornerRadius: 15)
                                                .fill(Color.purple)
                                                .ignoresSafeArea()
                                                .frame(width: 135, height: 98)
                                                .overlay(
                                                    VStack {
                                                        HStack {
                                                            Text("Law")
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
                                        }
                                    }
                                    HStack {
                                        Text("Trending Posts")
                                            .font(.title)
                                        Spacer()
                                    }
                                    .padding(.top, 30)
                                    .padding(.horizontal)
                                    ScrollView(.vertical) {
                                        VStack {
                                            RoundedRectangle(cornerRadius: 15)
                                                .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                                .ignoresSafeArea()
                                                .frame(width: 385, height: 150)
                                                .overlay(
                                                    VStack {
                                                        PostUIView(authorName: "Marco Abbate",
                                                                   authorImageName: "fp2",
                                                                   title: "My cat is running everywhere in the house",
                                                                   bodyText: "I love my cat, but she's always on the move. She runs up and down the stairs, jumps on the furniture, and even plays with her toys at all hours of the day and night. I'm worried that she's going to hurt herself or break something in the house.",
                                                                   likesCount: 45,
                                                                   timestamp: Date().addingTimeInterval(-360),
                                                                   postCat: "Animals"
                                                        )
                                                    }
                                                )
                                            RoundedRectangle(cornerRadius: 15)
                                                .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                                .ignoresSafeArea()
                                                .frame(width: 385, height: 150)
                                                .overlay(
                                                    VStack {
                                                        PostUIView(authorName: "Martina Farina",
                                                                   authorImageName: "fp1",
                                                                   title: "The flowers in my garden are drying up",
                                                                   bodyText: "I've been taking care of my garden for a few years now and it's always been so beautiful. But this year, the flowers are just not doing well. They're all starting to dry up and wilt away.",
                                                                   likesCount: 3,
                                                                   timestamp: Date().addingTimeInterval(-3600),
                                                                   postCat: "Gardening"
                                                        )
                                                    }
                                                )
                                        }
                                    }
                                }
                                    .padding(.vertical)
                            )
                    }
                }
            }
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search", text: $text)
                .foregroundColor(.primary)
            if !text.isEmpty {
                Button(action: {
                    self.text = ""
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                })
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(35)
    }
}

struct DiscoverUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverUIView()
    }
}

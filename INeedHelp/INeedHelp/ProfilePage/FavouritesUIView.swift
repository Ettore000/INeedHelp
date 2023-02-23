//
//  FavouritesViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct FavouritesUIView: View {
    var body: some View {
        ZStack {
            GradientBackground()
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
                                       likesCount: 8,
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
                            PostUIView(authorName: "Chiara Rizzi",
                                       authorImageName: "fp3",
                                       title: "How to cook pizza at home?",
                                       bodyText: "I love eating pizza on saturday night, it's a tradition...",
                                       likesCount: 15,
                                       timestamp: Date().addingTimeInterval(-2400),
                                       postCat: "Food")
                        }
                    )
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                    .ignoresSafeArea()
                    .frame(width: 385, height: 150)
                    .overlay(
                        VStack {
                            PostUIView(authorName: "Sofia Romano",
                                       authorImageName: "fp3",
                                       title: "My cat has a broken paw. ",
                                       bodyText: "How can i relieve him?",
                                       likesCount: 30,
                                       timestamp: Date().addingTimeInterval(-3100),
                                       postCat: "Animals")
                        }
                    )
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                    .ignoresSafeArea()
                    .frame(width: 385, height: 150)
                    .overlay(
                        VStack {
                            PostUIView(authorName: "Giorgio Costa",
                                       authorImageName: "fp5",
                                       title: "I'm arranging the garden of my new house.",
                                       bodyText: "Wheni the best time to plant flower beds?",
                                       likesCount: 50,
                                       timestamp: Date().addingTimeInterval(-3600),
                                       postCat: "Gardening")
                            
                        }
                    )
            }
        }
    }
}

struct FavouritesUIView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesUIView()
    }
}

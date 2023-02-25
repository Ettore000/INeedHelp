//
//  FoodUIVew.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 25/02/23.
//

import SwiftUI

struct FoodUIVew: View {
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackground()
                ZStack {
                    VStack {
                        HStack {
                            Text("Food")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                            Spacer()
                        }
                        ScrollView(.vertical) {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                .ignoresSafeArea()
                                .frame(width: 385, height: 150)
                                .overlay(
                                    VStack {
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                            .ignoresSafeArea()
                                            .frame(width: 385, height: 150)
                                            .overlay(
                                                VStack {
                                                    PostUIView(authorName: "Giovanni Rossi",
                                                               authorImageName: "fp3",
                                                               title: "Preparing my favorite pasta recipe",
                                                               bodyText: "There's nothing quite like a big bowl of pasta on a chilly night. I'm sharing my favorite pasta recipe that I've been perfecting for years. The key is in the sauce! Check out my blog for the full recipe and step-by-step instructions. #foodie #pasta #recipe",
                                                               likesCount: 22,
                                                               timestamp: Date().addingTimeInterval(-600),
                                                               postCat: "Food"
                                                    )
                                                }
                                            )
                                    }
                                )
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                .ignoresSafeArea()
                                .frame(width: 385, height: 150)
                                .overlay(
                                    VStack {
                                        PostUIView(authorName: "Linda Nguyen",
                                                   authorImageName: "fp4",
                                                   title: "My go-to breakfast smoothie recipe",
                                                   bodyText: "I start every morning with a nutritious and delicious smoothie. My go-to recipe is packed with spinach, frozen berries, Greek yogurt, and almond milk. It's the perfect way to start the day on a healthy note! #breakfast #smoothie #healthylifestyle",
                                                   likesCount: 35,
                                                   timestamp: Date().addingTimeInterval(-1200),
                                                   postCat: "Food"
                                        )
                                    }
                                )
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                .ignoresSafeArea()
                                .frame(width: 385, height: 150)
                                .overlay(
                                    VStack {
                                        PostUIView(authorName: "Sarah Lee",
                                                   authorImageName: "fp5",
                                                   title: "Discovering new flavors at the farmer's market",
                                                   bodyText: "I love exploring local farmer's markets and trying new foods. Last weekend, I discovered a new variety of heirloom tomatoes and some unique artisanal cheeses. I can't wait to experiment with these ingredients in my cooking! #foodexplorer #farmersmarket",
                                                   likesCount: 12,
                                                   timestamp: Date().addingTimeInterval(-2400),
                                                   postCat: "Food"
                                        )
                                    }
                                )
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                .ignoresSafeArea()
                                .frame(width: 385, height: 150)
                                .overlay(
                                    VStack {
                                        PostUIView(authorName: "Emily Chen",
                                                   authorImageName: "fp1",
                                                   title: "Exploring international cuisine",
                                                   bodyText: "I love trying new foods from around the world! Recently, I discovered a new Japanese restaurant in town and tried their ramen for the first time. It was amazing! Next on my list: Korean barbecue. #foodadventurer #internationalcuisine",
                                                   likesCount: 18,
                                                   timestamp: Date().addingTimeInterval(-3600),
                                                   postCat: "Food"
                                        )
                                    }
                                )
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                                .ignoresSafeArea()
                                .frame(width: 385, height: 150)
                                .overlay(
                                    VStack {
                                        PostUIView(authorName: "Carlos Gonzalez",
                                                   authorImageName: "fp2",
                                                   title: "Healthy meal prep ideas",
                                                   bodyText: "Staying on track with a healthy diet can be tough, but meal prep is a game-changer. I like to spend a few hours on Sundays prepping my meals for the week ahead. Some of my go-to recipes include grilled chicken and veggies, quinoa salads, and homemade hummus. #mealprep #healthyeating",
                                                   likesCount: 25,
                                                   timestamp: Date().addingTimeInterval(-7200),
                                                   postCat: "Food"
                                        )
                                    }
                                )
                            RoundedRectangle(cornerRadius: 15)
                            .fill(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
                            .ignoresSafeArea()
                            .frame(width: 385, height: 150)
                            .overlay(
                            VStack {
                            PostUIView(authorName: "Emily Chen",
                            authorImageName: "fp3",
                            title: "Cooking up a storm in the kitchen",
                            bodyText: "Staying on track with a healthy diet can be tough, but meal prep is a game-changer. I like to spend a few hours on Sundays prepping my meals for the week ahead. Some of my go-to recipes include grilled chicken and veggies, quinoa salads, and homemade hummus. #mealprep #healthyeating",
                            likesCount: 25,
                            timestamp: Date().addingTimeInterval(-7400),
                            postCat: "Food"
                            )
                            }
                            )
                        }
                    }
                }
            }
        }
    }
}

struct FoodUIVew_Previews: PreviewProvider {
    static var previews: some View {
        FoodUIVew()
    }
}

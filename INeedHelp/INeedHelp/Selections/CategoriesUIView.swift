//
//  CategoriesUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct CategoriesUIView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackground()
                ZStack {
                    VStack {
                        HStack {
                            Text("Categories")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                            Spacer()
                        }
                        ScrollView(.vertical) {
                            CategoriesPostUIView(imageName: "food", title: "Food", subscribers: 122000)
                                .frame(width: 400, height: 200)
                                .opacity(0.9)
                            CategoriesPostUIView(imageName: "home", title: "Home", subscribers: 23000)
                                .frame(width: 400, height: 200)
                                .opacity(0.9)
                            CategoriesPostUIView(imageName: "clothes", title: "Clothes", subscribers: 3000)
                                .frame(width: 400, height: 200)
                                .opacity(0.9)
                            CategoriesPostUIView(imageName: "car", title: "Cars", subscribers: 123)
                                .frame(width: 400, height: 200)
                                .opacity(0.9)
                        }
                    }
                }
            }
        }
    }
}

struct CategoriesUIView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesUIView()
    }
}

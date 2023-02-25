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
                            CategoriesPostUIView(imageName: "fp1", title: "Title", subscribers: 123)
                                .frame(width: 400, height: 200)
                                .opacity(0.9)
                            CategoriesPostUIView(imageName: "fp1", title: "Title", subscribers: 123)
                                .frame(width: 400, height: 200)
                                .opacity(0.9)
                            CategoriesPostUIView(imageName: "fp1", title: "Title", subscribers: 123)
                                .frame(width: 400, height: 200)
                                .opacity(0.9)
                            CategoriesPostUIView(imageName: "fp1", title: "Title", subscribers: 123)
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

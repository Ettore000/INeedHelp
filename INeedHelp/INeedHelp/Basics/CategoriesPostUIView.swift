//
//  CategoriesPostUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 25/02/23.
//

import SwiftUI

struct CategoriesPostUIView: View {
    var imageName: String
    var title: String
    var subscribers: Int
    
    var body: some View {
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(
                        VStack {
                            Spacer()
                            Text(title)
                                .font(.system(size: 80))
                                .padding(.top, 10)
                                .foregroundColor(.white)
                                .bold()
                            Spacer()
                            HStack {
                                Image(systemName: "person.2")
                                Text("\(subscribers) subscribers")
                                    .font(.title3)
                            }
                            .padding(.bottom, 10)
                            .padding(.trailing, 10)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                        }
                    )
            }
    }
}

struct CategoriesPostUIView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackground()
            VStack {
                CategoriesPostUIView(imageName: "food", title: "Food", subscribers: 123)
                    .frame(width: 400, height: 200)
                    .opacity(0.9)
            }
        }
    }
}

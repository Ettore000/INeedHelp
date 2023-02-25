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
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(radius: 5)
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                Text(title)
                    .font(.headline)
                    .padding(.top, 10)
                Spacer()
                HStack {
                    Image(systemName: "person.2")
                    Text("\(subscribers) subscribers")
                        .font(.footnote)
                }
                .padding(.bottom, 10)
                .padding(.trailing, 10)
                .foregroundColor(.gray)
            }
        }
    }
}

struct CategoriesPostUIView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackground()
            VStack {
                CategoriesPostUIView(imageName: "food", title: "Title", subscribers: 123)
                    .frame(width: 400, height: 200)
                    .opacity(0.9)
            }
        }
    }
}

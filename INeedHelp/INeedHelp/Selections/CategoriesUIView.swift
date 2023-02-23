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
                        HStack {
                            Text("Barra di ricerca")
                                .foregroundColor(.white)
                        }
                        Spacer()
                        RoundedRectangle(cornerRadius: 35)
                        .fill(Color.white)
                        .ignoresSafeArea()
                        .overlay(
                        Text("Ciao")
                        )
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

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
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
            }
        }
    }
}

struct FavouritesUIView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesUIView()
    }
}

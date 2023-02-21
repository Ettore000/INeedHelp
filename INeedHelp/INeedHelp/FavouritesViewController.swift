//
//  FavouritesViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct FavouritesViewController: View {
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

struct FavouritesViewController_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesViewController()
    }
}

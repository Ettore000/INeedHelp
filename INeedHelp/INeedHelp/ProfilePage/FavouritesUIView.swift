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
                Text("Favourites posts page here")
                    .foregroundColor(Color.white)
                    .font(.title)
            }
        }
    }
}

struct FavouritesUIView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesUIView()
    }
}

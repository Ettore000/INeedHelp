//
//  DiscoverUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct DiscoverUIView: View {
    var body: some View {
        ZStack {
            GradientBackground()
            VStack {
                Text("Ciao")
                    .foregroundColor(.white)
            }
        }
    }
}

struct DiscoverUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverUIView()
    }
}

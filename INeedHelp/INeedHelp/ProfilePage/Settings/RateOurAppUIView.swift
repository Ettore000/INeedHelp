//
//  RateOurAppUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct RateOurAppUIView: View {
    var body: some View {
        ZStack {
            GradientBackground()
            VStack {
                Text("Rate our App here")
                    .foregroundColor(.white)
            }
        }
    }
}

struct RateOurAppUIView_Previews: PreviewProvider {
    static var previews: some View {
        RateOurAppUIView()
    }
}

//
//  GradientBackground.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 17/02/23.
//

import SwiftUI

import SwiftUI

struct GradientBackground: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.purple, Color.blue]),
            startPoint: .top,
            endPoint: .bottom
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            GradientBackground()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GradientBackground_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackground()
    }
}

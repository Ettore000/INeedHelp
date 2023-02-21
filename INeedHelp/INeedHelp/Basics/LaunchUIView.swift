//
//  LaunchUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 22/02/23.
//

import SwiftUI

struct LaunchUIView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                Page1SwiftUIView()
                    .tag(0)
                Page2SwiftUIView()
                    .tag(1)
                Page3SwiftUIView()
                    .tag(2)
                Page4SwiftUIView()
                    .tag(3)
                Page5SwiftUIView()
                    .tag(4)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            Button(action: {}) {
                Text("Skip").foregroundColor(Color(hue: 0.742, saturation: 0.566, brightness: 0.945)).bold().font(.title)
            }
        }
    }
}

struct LaunchUIView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchUIView()
    }
}

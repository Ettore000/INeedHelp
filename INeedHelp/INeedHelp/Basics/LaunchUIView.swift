//
//  LaunchUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 22/02/23.
//

import SwiftUI

struct LaunchUIView: View {
    @State private var selectedTab = 0
    @State private var shouldShowNewView = false
    
    var body: some View {
        NavigationStack {
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
                VStack {
                    HStack {
                        Button(action: {selectedTab -= 1}) {
                            Image(systemName: "chevron.left.circle")
                                .foregroundColor(Color(hue: 0.742, saturation: 0.566, brightness: 0.945))
                                .bold()
                                .font(.title)
                            
                        }
                        .padding(.horizontal)
                        Spacer()
                        NavigationLink(destination: LoginFormView().navigationBarBackButtonHidden(true)) {
                            Text("Skip")
                                .foregroundColor(Color(hue: 0.742, saturation: 0.566, brightness: 0.945))
                                .bold()
                                .font(.title)
                        }
                        Spacer()
                        Button(action: {
                            if selectedTab < 4 {
                                withAnimation {
                                    selectedTab += 1
                                }
                            } else {
                                shouldShowNewView = true
                            }
                        }) {
                            Image(systemName: "chevron.right.circle")
                                .foregroundColor(Color(hue: 0.742, saturation: 0.566, brightness: 0.945))
                                .bold()
                                .font(.title)
                            
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .animation(.easeInOut(duration: 0.3))
            .transition(.slide)
            .background(
                NavigationLink(destination: LoginFormView().navigationBarBackButtonHidden(true), isActive: $shouldShowNewView) {
                            EmptyView()
                        }
                    )
        }
    }
}

struct LaunchUIView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchUIView()
    }
}

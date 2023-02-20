//
//  TabBarViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 20/02/23.
//

import SwiftUI

struct TabBarViewController: View {
    var body: some View {
        TabView {
            NavigationStack {
                Text("Discover")
                    .navigationBarTitle("Discover", displayMode: .automatic)
                    .toolbar {
                        ToolbarItem {
                            Button("Profile") {
                                Image("fp1")
                            }
                        }
                    }
            }.onTapGesture {}
                .tabItem {
                    Label("Discover", systemImage: "globe")
                }
            NavigationStack {
                Text("New")
                    .navigationBarTitle("New", displayMode: .automatic)
                    .toolbar {
                        ToolbarItem {
                            Button("Profile") {}
                        }
                    }
            }.onTapGesture {}
                .tabItem {
                    Label("New", systemImage: "plus.circle")
                }
            NavigationStack {
                Text("Categories")
                    .navigationBarTitle("Categories", displayMode: .automatic)
                    .toolbar {
                        ToolbarItem {
                            Button("Profile") {}
                        }
                    }
            }.onTapGesture {}
                .tabItem {
                    Label("Categories", systemImage: "circle.hexagongrid.circle")
                }
        }
    }
}

struct TabBarViewController_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewController()
    }
}

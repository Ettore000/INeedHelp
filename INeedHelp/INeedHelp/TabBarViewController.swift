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
                ZStack {
                    GradientBackground()
                    VStack {
                        Text("Ciao")
                            .foregroundColor(Color.white)
                    }
                }
                
                
                Text("")
                    .navigationBarTitle("Discover", displayMode: .automatic)
                    .toolbar {
                        ToolbarItem {
                            ImageFieldView()
                        }
                    }
            }
            .onTapGesture {}
                .tabItem {
                    Label("Discover", systemImage: "globe")
                }
            NavigationStack {//ac6ef8 .foregroundColor(Color.red)
                Text("New")
                    .navigationBarTitle("New", displayMode: .automatic)
                    .toolbar {
                        ToolbarItem {
                            ImageFieldView()
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
                            ImageFieldView()
                        }
                    }
            }.onTapGesture {}
                .tabItem {
                    Label("Categories", systemImage: "circle.hexagongrid.circle")
                }
        }
    }
}

struct ImageFieldView: View {
    @State private var isShowingImageDetail = false
    var body: some View {
        VStack {
            Image("fp2")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .onTapGesture {
                    self.isShowingImageDetail = true
                }
                .sheet(isPresented: $isShowingImageDetail) {
                    ImageDetailView()
                }
        }
        
    }
}

struct ImageDetailView: View {
    var body: some View {
        ProfileViewController()
    }
}

struct TabBarViewController_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViewController()
    }
}

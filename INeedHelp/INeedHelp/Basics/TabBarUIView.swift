//
//  TabBarViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 20/02/23.
//
import SwiftUI

struct TabBarUIView: View {
    var body: some View {
        TabView {
            NavigationStack {
                ZStack {
                    DiscoverUIView()
                    VStack {
                        layoutmark()
                    }
                }
                Spacer()
            }
            .onTapGesture {}
            .tabItem {
                Label("Discover", systemImage: "globe")
                    .foregroundColor(.black)
            }
            NavigationStack {
                ZStack {
                    NewUIView()
                    VStack {
                        layoutmark()
                    }
                }
                Spacer()
            }.onTapGesture {}
                .tabItem {
                    Label("New", systemImage: "plus.circle")
                }
            NavigationStack {
                ZStack {
                    CategoriesUIView()
                    VStack {
                        layoutmark()
                    }
                }
                Spacer()
            }.onTapGesture {}
                .tabItem {
                    Label("Categories", systemImage: "circle.hexagongrid.circle")
                }
        }
        .accentColor(Color(UIColor.init(red: 172/255, green: 110/255, blue: 248/255, alpha: 1)))
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

struct layoutmark: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    ImageFieldView()
                        .padding()
                }
                Spacer()
            }
        }
    }
}

struct ImageDetailView: View {
    var body: some View {
        ProfileUIView()
    }
}

struct TabBarUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarUIView()
    }
}

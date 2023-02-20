//
//  TabViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 20/02/23.
//

//
//  TabSwiftUIView.swift
//  App I Need Help
//
//  Created by barbarasicuranza on 15/02/23.
//

import SwiftUI

struct TabViewController: View {
    /*init() {
     let navBarAppearance = UINavigationBarAppearance()
     navBarAppearance.backgroundColor = UIColor.systemPurple
     navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white,  .font: UIFont(name: "ArialRoundedMTBold", size:35)!]
     navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont(name: "ArialRoundedMTBold", size: 20)!]
     
     UINavigationBar.appearance().standardAppearance = navBarAppearance
     UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
     UINavigationBar.appearance().compactAppearance = navBarAppearance
     
     navBarAppearance.setBackIndicatorImage(UIImage(systemName: "arrow.turn.up.left"), transitionMaskImage: UIImage(systemName: "arrow.turn.up.left"))
     
     UINavigationBar.appearance().tintColor = UIColor.white
     
     
     }*/
    var body: some View {
        TabView {
         NavigationStack{
         VStack{
         }.navigationBarTitle("Discover", displayMode: .automatic).toolbar(content: {
         
         NavigationLink(destination: EmptyView()) {
         
         Image(systemName: "person.fill").font(.title).foregroundColor(.white).position()
         
         }
         
         
         })
         
         
         }.tabItem {
         
         Label("Discover", systemImage: "globe")
         
         }
         
         NavigationStack{
         
         VStack{
         
         }.navigationBarTitle("New", displayMode: .automatic)
         
         }.tabItem {
         
         Label("New", systemImage: "plus.circle")
         
         }
         
         NavigationStack{
         
         VStack{
         
         }.navigationBarTitle("Categories", displayMode: .automatic)
         
         }.tabItem{
         
         Label("Categories", systemImage:"circle.hexagongrid.circle")
         }
         }
    }
}

struct TabViewController_Previews: PreviewProvider {
    static var previews: some View {
        TabViewController()
    }
}


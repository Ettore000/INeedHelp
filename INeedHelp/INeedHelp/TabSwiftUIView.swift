//
//  TabSwiftUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 15/02/23.
//

import SwiftUI

struct TabSwiftUIView: View {
    
    //@State var showProfile = false
    //@State var selectedProfile: Profile?
    
    @State var nextWindow = [Int] ()
    
        init() {
            let navBarAppearance = UINavigationBarAppearance()
            
            navBarAppearance.backgroundColor = UIColor.systemPurple
            
            navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white,  .font: UIFont(name: "ArialRoundedMTBold", size:35)!]
            
            navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemYellow, .font: UIFont(name: "ArialRoundedMTBold", size: 20)!]
            
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
            UINavigationBar.appearance().compactAppearance = navBarAppearance
            
            navBarAppearance.setBackIndicatorImage(UIImage(systemName: "arrow.turn.up.left"), transitionMaskImage: UIImage(systemName: "arrow.turn.up.left"))
            
            UINavigationBar.appearance().tintColor = UIColor.white
            
        }
        
    
    
    var body: some View {
        
        /*NavigationStack(path: $nextWindow){
            
            VStack {
                
                Button("Profile") {
                    
                    self.nextWindow.append(3)
                    
                }
                
            }.padding(.trailing, 20)
                .padding(.top, 40)
                .navigationDestination(for: Int.self) { i in
                    
                    Text("\(i)")
                }
        }*/
        /*VStack {
            
            ProfileButton(color: .red)
        }*/
        
        TabView {
            
            NavigationStack{
                
                VStack{
                    
                    /*ZStack{
                        
                        VStack{
                                
                            //ProfileButton(color: .red).position(x: 350, y: -20)
                        
                            
                                
                                //ProfileButton(color: .red).position(x: 350, y: -20)
                            
                            
                            RoundedRectangle(cornerRadius: 30).frame(width: 405, height: 250).foregroundColor(.purple).background(LinearGradient(gradient: <#T##Gradient#>(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing)).position(x: 200, y: 30)
                                
                            //ProfileButton(color: .blue).position(x: 350, y: -20)
                            
                            /*HStack {
                                
                                ProfileButton(color: .red)
                            }*/
                            
                            
                            
                            Spacer()
                            
                            VStack{
                                
                                RoundedRectangle(cornerRadius: 30).padding(.bottom).frame(width: 402, height: 550).foregroundColor(.blue)
                                    .position(x: 200, y: 75)
                                
                            }
                            
                            
                            /*RoundedRectangle(cornerRadius: 30).padding(.bottom).frame(width: 350, height: 40).foregroundColor(.gray)*/
                            Spacer()
                            
                            
                            
                        }
                        
                    }*/
                    
                }.navigationBarTitle("Discover", displayMode: .automatic)
                
                
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

struct ProfileButton: View {
    
    var color: Color
    
    var body: some View {
        
        Button(action: {}) {
            
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(color)
                .overlay(
                
                    Text("1").font(.system(size: 30, weight: .bold)).foregroundColor(.black)
                
                )
        }
    }
}

struct TabSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabSwiftUIView()
    }
}

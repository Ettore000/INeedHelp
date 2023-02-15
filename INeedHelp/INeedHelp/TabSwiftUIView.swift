//
//  TabSwiftUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 15/02/23.
//

import SwiftUI

struct TabSwiftUIView: View {
    var body: some View {
        
        TabView {
            
            NavigationStack{
                
                
                
                VStack{
                    
                    ZStack{
                        
                        VStack{
                            
                            RoundedRectangle(cornerRadius: 30).padding(.top).frame(width: 405, height: 270).foregroundColor(.purple).position(x: 200, y: 30)
                            
                            Spacer()
                            
                            RoundedRectangle(cornerRadius: 30).padding(.bottom).frame(width: 402, height: 550).foregroundColor(.white).position(x: 200, y: 45)
                            Spacer()
                            
                        }
                        
                    }
                    
                }.navigationBarTitle("Discover", displayMode: .automatic)
            }.tabItem {
                
                Label("Discover", systemImage: "globe")
                
            }
            VStack{
                
                Text("Ciao")
                Spacer()
                
            }.tabItem {
                
                Label("Create", systemImage: "plus.circle")
                
                
            }
            VStack{
                
            }.tabItem{
                
                
                Label("Categories", systemImage:"circle.hexagongrid.circle")
                
            }
            
        }
    }
}

struct TabSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabSwiftUIView()
    }
}

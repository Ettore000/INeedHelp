//
//  CoursesShopViewControler.swift
//  INeedHelp
//
//  Created by antonioperna on 22/02/23.
//

import SwiftUI

struct CoursesShopViewControler: View {
    var body: some View {
        ZStack {
            GradientBackground()
            }
            ZStack {
                
                
                VStack{ RoundedRectangle(cornerRadius: 34).foregroundColor(Color.orange).frame(width: 351, height: 77).position(x: 180, y: 225)
                }
                RoundedRectangle(cornerRadius: 34).foregroundColor(Color(white: 0.90)).frame(width: 345, height: 70).position(x: 180, y: 225)
                VStack{
                    Text("Web Design")
                        .font(.title3)
                        .fontWeight(.bold).position(x:180,y:225)
                    VStack{
                        Image(systemName: "folder.fill").position(x:50,y:-158)
                            .font(.title3)
                            .foregroundColor(.orange)
                    }
                }
                VStack{ RoundedRectangle(cornerRadius: 34).foregroundColor(Color.orange).frame(width: 351, height: 77).position(x: 180, y: 310)
                }
                RoundedRectangle(cornerRadius: 34).foregroundColor(Color(white: 0.90)).frame(width: 345, height: 70).position(x: 180, y: 310)
                VStack{
                    Text("Graphic Design")
                        .font(.title3)
                        .fontWeight(.bold).position(x:180,y:310)
                    VStack{
                        Image(systemName: "pencil.and.ruler.fill").position(x:50,y:-73)
                            .font(.title2)
                            .foregroundColor(.orange)
                    }
                }
                VStack{ RoundedRectangle(cornerRadius: 34).foregroundColor(Color.orange).frame(width: 351, height: 77).position(x: 180, y: 396)
                }
                RoundedRectangle(cornerRadius: 34).foregroundColor(Color(white: 0.90)).frame(width: 345, height: 70).position(x: 180, y: 396)
                VStack{
                    Text("User Interface Design")
                        .font(.title3)
                        .fontWeight(.bold).position(x:180,y:396)
                    VStack{
                        Image(systemName: "computermouse.fill").position(x:50,y:13)
                            .font(.title2)
                            .foregroundColor(.orange)
                    }
                }
                ZStack{
                    VStack{ RoundedRectangle(cornerRadius: 34).foregroundColor(Color.orange).frame(width: 351, height: 77).position(x: 180, y: 480)
                    }
                    RoundedRectangle(cornerRadius: 34).foregroundColor(Color(white: 0.90)).frame(width: 345, height: 70).position(x: 180, y: 480)
                    VStack{
                        Text("User Experience Design ")
                            .font(.title3)
                            .fontWeight(.bold).position(x:180,y:480)
                        VStack{
                            Image(systemName: "desktopcomputer").position(x:50,y:98)
                                .font(.title2)
                                .foregroundColor(.orange)
                        }
                    }
                    VStack{ RoundedRectangle(cornerRadius: 34).foregroundColor(Color.orange).frame(width: 351, height: 77).position(x: 180, y: 565)
                    }
                    RoundedRectangle(cornerRadius: 34).foregroundColor(Color(white: 0.90)).frame(width: 345, height: 70).position(x: 180, y: 565)
                    VStack{
                        Text("Interior Design")
                            .font(.title3)
                            .fontWeight(.bold).position(x:180,y:565)
                        VStack{
                            Image(systemName: "lamp.table.fill").position(x:50,y:180)
                                .font(.title2)
                                .foregroundColor(.orange)
                        }
                    }
                    VStack{ RoundedRectangle(cornerRadius: 34).foregroundColor(Color.orange).frame(width: 351, height: 77).position(x: 180, y: 650)
                    }
                    RoundedRectangle(cornerRadius: 34).foregroundColor(Color(white: 0.90)).frame(width: 345, height: 70).position(x: 180, y: 650)
                    VStack{
                        Text("Car Design")
                            .font(.title3)
                            .fontWeight(.bold).position(x:180,y:650)
                        VStack{
                            Image(systemName: "car.fill").position(x:50,y:265)
                                .font(.title2)
                                .foregroundColor(.orange)
                        }
                    }
                }
            }
        }
    }
    
    struct CoursesShopViewController_Previews: PreviewProvider {
        static var previews: some View {
            CoursesViewController()
        }
    }


struct CoursesShopViewControler_Previews: PreviewProvider {
    static var previews: some View {
        CoursesShopViewControler()
    }
}

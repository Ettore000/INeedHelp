//
//  Page4SwiftUIView.swift
//  App I Need Help
//
//  Created by barbarasicuranza on 18/02/23.
//

import SwiftUI

struct Page4SwiftUIView: View {
    var body: some View {
        ZStack {
            ZStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 19).foregroundColor(Color(red: 0.6745098039215687, green: 0.43137254901960786, blue: 0.9725490196078431))
                        .frame(width: 37, height: 318)
                        .position(x: 340, y: 420)
                    RoundedRectangle(cornerRadius: 19).foregroundColor(Color(red: 0.2196078431372549, green: 0.32941176470588235, blue: 0.48627450980392156))
                        .frame(width: 37, height: 525)
                        .position(x: 375, y: 420)
                }
                RoundedRectangle(cornerRadius: 19)
                    .foregroundColor(.white)
                    .frame(width: 376, height: 195)
                    .position(x: 200, y: 300)
            }
            ZStack {
                Image("Pagina4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 373, height: 182)
                    .position(x: 200, y: 300)
            }
            ZStack {
                Text("Meet new")
                    .font(.title)
                    .foregroundColor(Color(red: 0.445, green: 0.552, blue: 0.999))
                    .position(x: 195, y: 400)
                    .position(x: 90, y: 30)
            }
            ZStack {
                Text("people !")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.6745098039215687, green: 0.43137254901960786, blue: 0.9725490196078431))
                    .position(x: 210, y: 50)
            }
            ZStack {
                Text("Join the")
                    .font(.title)
                    .foregroundColor(Color(red: 0.445, green: 0.552, blue: 0.999))
                    .position(x: 195, y: 400)
                    .position(x: 140, y: 100)
            }
            ZStack {
                Text("communities !")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.6745098039215687, green: 0.43137254901960786, blue: 0.9725490196078431))
                    .position(x: 290, y: 120)
            }
            ZStack {
                Text("You will find art, music, sport, cooking and much more enthusiasts who, with share a new way of living your hobbies and interests.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(width: 292.0, height: 500.0)
                    .foregroundColor(Color(red: 0.445, green: 0.552, blue: 0.999))
                    .position(x: 170, y: 550)
            }
        }
        .clipped()
    }
}

struct Page4SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Page4SwiftUIView()
    }
}


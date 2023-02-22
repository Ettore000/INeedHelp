//
//  SecondaPagineSwiftUIView.swift
//  App I Need Help
//
//  Created by barbarasicuranza on 18/02/23.
//

import SwiftUI

struct Page2SwiftUIView: View {
    var body: some View {
        ZStack {
            VStack {
                RoundedRectangle(cornerRadius: 34)
                    .foregroundColor(Color(red: 0.6745098039215687, green: 0.43137254901960786, blue: 0.9725490196078431))
                    .frame(width: 172, height: 489)
                    .position(x: 320, y: 180)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 34)
                    .foregroundColor(Color(red: 0.2196078431372549, green: 0.32941176470588235, blue: 0.48627450980392156))
                    .frame(width: 130, height: 442)
                    .position(x: 180, y: 320)
            }
            ZStack {
                Image(systemName: "iphone.gen1")
                    .resizable()
                    .imageScale(.large)
                    .foregroundColor(.black)
                    .frame(width: 202, height: 415)
                    .position(x: 190, y: 315)
                
            }
            .rotationEffect(Angle(degrees: -10))
            ZStack{
                Image(systemName: "paintpalette.fill")
                    .resizable()
                    .imageScale(.large)
                    .foregroundColor(.white)
                    .frame(width: 100, height: 70)
                    .position(x: 300, y: 50)
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .imageScale(.large)
                    .foregroundColor(Color(red: 0.44313725490196076, green: 0.5529411764705883, blue: 1.0))
                    .frame(width: 60, height: 60)
                    .position(x: 350, y: 430)
                Image(systemName: "volleyball.fill")
                    .resizable()
                    .imageScale(.large)
                    .foregroundColor(Color(red: 0.9294117647058824, green: 0.8196078431372549, blue: 0.8196078431372549))
                    .frame(width: 100, height: 100)
                    .position(x: 3, y: 470)
                Image(systemName: "pencil")
                    .resizable()
                    .foregroundColor(Color(red: 0.44313725490196076, green: 0.5529411764705883, blue: 1.0))
                    .imageScale(.large)
                    .frame(width: 40, height: 65)
                    .position(x: 160, y: 40)
                Image(systemName: "cloud.fill")
                    .resizable()
                    .imageScale(.large)
                    .foregroundColor(Color(red: 0.9294117647058824, green: 0.8196078431372549, blue: 0.8196078431372549))
                    .frame(width: 105, height: 95)
                    .position(x: -10, y: 130)
            }
            ZStack {
                Image(systemName: "guitars.fill")
                    .resizable()
                    .imageScale(.large)
                    .foregroundColor(.white)
                    .frame(width: 70, height: 70)
                    .position(x: 300, y: 180)
            }
            .rotationEffect(Angle(degrees: 10))
            ZStack {
                HStack {
                    Text("What are your")
                        .font(.title)
                        .foregroundColor(Color(red: 0.445, green: 0.552, blue: 0.999))
                        .position(x: 125, y: 580)
                    Text("passions?")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.742, saturation: 0.566, brightness: 0.945))
                        .position(x: 85, y: 580)
                }
            }
        }
        .clipped()
    }
}

struct Page2SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Page2SwiftUIView()
    }
}

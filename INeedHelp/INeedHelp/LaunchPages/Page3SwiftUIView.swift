//
//  Page3SwiftUIView.swift
//  App I Need Help
//
//  Created by barbarasicuranza on 18/02/23.
//

import SwiftUI

struct Page3SwiftUIView: View {
    var body: some View {
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 19)
                    .foregroundColor(Color(red: 0.6745098039215687, green: 0.43137254901960786, blue: 0.9725490196078431))
                    .frame(width: 37, height: 223)
                    .position(x: -100, y: 590)
                RoundedRectangle(cornerRadius: 19)
                    .foregroundColor(Color(red: 0.2196078431372549, green: 0.32941176470588235, blue: 0.48627450980392156))
                    .frame(width: 37, height: 335)
                    .position(x: -50, y: 560)
            }
            .rotationEffect(Angle(degrees: -29))
            VStack {
                Spacer()
                Image("Pagina3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 381, height: 254)
                    .position(x: 200, y: 170)
            }
            ZStack {
                VStack {
                    Text("Here you can answer all your questions.")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.445, green: 0.552, blue: 0.999))
                        .position(x: 195, y: 400)
                    
                    Text("There we always be an expert ready to answer!")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.445, green: 0.552, blue: 0.999))
//                        .position(x: 150 , y: 130)
                        .frame(width: 300, height: 350)
                }
            }
        }
        .clipped()
        .ignoresSafeArea()
    }
}

struct Page3SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Page3SwiftUIView()
    }
}


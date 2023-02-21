//
//  PrimaPaginaSwiftUIView.swift
//  App I Need Help
//
//  Created by barbarasicuranza on 17/02/23.
//

import SwiftUI

struct Page1SwiftUIView: View {
    var body: some View {
        ZStack{
            ZStack {
                VStack {
                    HStack{
                        RoundedRectangle(cornerRadius: 34)
                            .foregroundColor(Color(red: 0.6745098039215687, green: 0.43137254901960786, blue: 0.9725490196078431))
                            .frame(width: 161, height: 500)
                        
                        RoundedRectangle(cornerRadius: 34)
                            .foregroundColor(Color(red: 0.2196078431372549, green: 0.32941176470588235, blue: 0.48627450980392156))
                            .frame(width: 161, height: 500)
                    }
                    .rotationEffect(Angle(degrees: -302))
                    .position(x: 205, y: 240)
                }
                RoundedRectangle(cornerRadius: 48)
                    .foregroundColor(.white)
                    .frame(width: 367, height: 364)
                    .position(x: 195, y: 250)
            }
            VStack{
                Image("ViewWelcome")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(60)
                    .frame(width: 355, height: 364)
                    .padding(.vertical, 70)
                Spacer()
            }
            HStack {
                Text("Welcome to")
                    .font(.title)
                    .foregroundColor(Color(red: 0.445, green: 0.552, blue: 0.999))
                    .position(x: 120, y: 530)
                Text("I Need Help")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.742, saturation: 0.566, brightness: 0.945))
                    .position(x: 70, y: 530)
            }
            VStack {
                Text("With us you can")
                    .font(.title)
                    .foregroundColor(Color(red: 0.7529411764705882, green: 0.7529411764705882, blue: 0.7529411764705882))
                    .multilineTextAlignment(.center)
                    .position(x: 195, y: 590)
                Text("discover a new way of")
                    .font(.title)
                    .foregroundColor(Color(red: 0.7529411764705882, green: 0.7529411764705882, blue: 0.7529411764705882))
                    .multilineTextAlignment(.center)
                    .position(x: 195, y: 370)
                Text("knowing!")
                    .font(.title)
                    .foregroundColor(Color(red: 0.7529411764705882, green: 0.7529411764705882, blue: 0.7529411764705882))
                    .multilineTextAlignment(.center)
                    .position(x: 195, y: 150)
            }
        }
        .clipped()
    }
}

struct Page1SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Page1SwiftUIView()
    }
}


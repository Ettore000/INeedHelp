//
//  Page5SwiftUIView.swift
//  App I Need Help
//
//  Created by barbarasicuranza on 18/02/23.
//

import SwiftUI

struct Page5SwiftUIView: View {
    var body: some View {
        ZStack {
            ZStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 41)
                        .frame(width: 272, height: 355)
                        .foregroundColor(Color(red: 0.6745098039215687, green: 0.43137254901960786, blue: 0.9725490196078431))
                        .position(x: 130, y: 110)
                }
                RoundedRectangle(cornerRadius: 41)
                    .frame(width: 272 ,height: 355)
                    .foregroundColor(Color(red: 0.2196078431372549, green: 0.32941176470588235, blue: 0.48627450980392156))
                    .position(x: 260, y: 340)
            }
            ZStack {
                Image("screen2").resizable().imageScale(.large).foregroundColor(.black).frame(width: 202, height: 450).position(x: 190, y: 315)
                
            }.rotationEffect(Angle(degrees: 10))
            ZStack {
                Text("Are you ready?").font(.title).fontWeight(.bold).foregroundColor(Color(red: 0.445, green: 0.552, blue: 0.999)).multilineTextAlignment(.center).position(x: 200, y: 580)
            }
        }
        .clipped()
        .ignoresSafeArea()
    }
}

struct Page5SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Page5SwiftUIView()
    }
}


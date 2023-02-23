//
//  CongratulationView.swift
//  INeedHelp
//
//  Created by maricaparente on 23/02/23.
//

import SwiftUI

struct CongratulationView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackground()
                VStack{
                    Spacer()
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .font(.system(size: 200))
                        .foregroundColor(.white)
                    Text("Congratulations!")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("You have successfully completed the registration.")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.orange)
                        .frame(width:150, height:70)
                        .padding(.horizontal)
                        .overlay(
                            NavigationLink(destination: TabBarUIView()
                                .navigationBarBackButtonHidden(true)) {
                                HStack {
                                    Text("Start")
                                        .font(.largeTitle.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        )
                    Spacer()
                }
            }
        }
    }
}

struct CongratulationView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationView()
    }
}

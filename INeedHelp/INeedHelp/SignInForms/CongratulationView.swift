//
//  CongratulationView.swift
//  INeedHelp
//
//  Created by maricaparente on 23/02/23.
//

import SwiftUI

struct CongratulationView: View {
    var body: some View {
        ZStack {
            GradientBackground()
            
            VStack{
                Image(systemName: "person.crop.circle.badge.checkmark")
                    .font(.system(size: 200))
                    .foregroundColor(.white)
                    .position(x:195, y:250)
                
                
            }
            
            
            VStack {
                Text("Congratulations!")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .position(x:195, y:450)
                   
                    
            }
            
            
            VStack{
                Text("You have successfully completed the registration.")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .position(x: 196, y: 550)
            }
            
            VStack{
                Button(action: { /* azione*/})
                {
                    Text("Start")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 44)
                        .frame(width:150, height:70)
                        .background(Color.orange)
//                        .background(Color(red: 0.8705882352941177, green: 0.5411764705882353, blue: 0.4470588235294118))
                        .cornerRadius(15)
                        .padding(.horizontal)
                        .position(x:196, y:700)
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

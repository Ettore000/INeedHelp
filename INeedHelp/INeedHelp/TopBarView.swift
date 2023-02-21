//
//  TopBarView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        ZStack {
            GradientBackground()
            VStack {
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color.white)
                    .opacity(0.93)
                    .frame(width: 400, height: 45)
                    .overlay(
                        VStack {
                            
                        }
                    )
                Spacer()
            }
        }
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}

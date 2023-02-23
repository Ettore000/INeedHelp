//
//  AdvancedOptionsUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct AdvancedOptionsUIView: View {
    var body: some View {
        ZStack {
            GradientBackground()
            VStack {
                Text("Advanced options here")
                    .foregroundColor(.white)
            }
        }
    }
}

struct AdvancedOptionsUIView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedOptionsUIView()
    }
}

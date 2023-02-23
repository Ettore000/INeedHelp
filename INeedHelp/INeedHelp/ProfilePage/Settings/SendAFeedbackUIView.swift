//
//  SendAFeedbackUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct SendAFeedbackUIView: View {
    var body: some View {
        ZStack {
            GradientBackground()
            VStack {
                Text("Send a Feedback here")
                    .foregroundColor(.white)
            }
        }
    }
}

struct SendAFeedbackUIView_Previews: PreviewProvider {
    static var previews: some View {
        SendAFeedbackUIView()
    }
}

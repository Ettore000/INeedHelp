//
//  TestUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.

import SwiftUI

struct TestUIView: View {
    let likesCount: Int
    let timeElapsed: TimeInterval
    
    var body: some View {
        HStack {
            Image(systemName: "heart.fill")
                .foregroundColor(.red)
            Text("\(likesCount) Mi piace")
            Spacer()
            Text(timeString(timeElapsed: timeElapsed))
        }
        .padding()
    }
    
    private func timeString(timeElapsed: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .abbreviated
        formatter.allowedUnits = [.second, .minute, .hour, .day]
        return formatter.string(from: timeElapsed)!
    }
}

struct prova: View {
    
    let post = Post(likesCount: 23, timeElapsed: 3600)
    
    var body: some View {
        TestUIView(likesCount: post.likesCount, timeElapsed: post.timeElapsed)
    }
}

struct Post {
    let likesCount: Int
    let timeElapsed: TimeInterval
}


struct TestUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestUIView()
    }
}

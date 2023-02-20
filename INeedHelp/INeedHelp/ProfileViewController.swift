//
//  ProfileViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 20/02/23.
//

import SwiftUI

struct ProfileViewController: View {
    let cornerRadius: CGFloat = 35.0
        let opacity: Double = 0.93
        
        var body: some View {
            ZStack {
                GradientBackground()
                VStack {
                   // RoundedRectangle(cornerRadius: cornerRadius)
                      //  .opacity(opacity)
                    
                    HStack(spacing: 0) {
                        Button("Settings") {}
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        Button("Theme") {}
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        Button("Saved") {}
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        Button("Courses") {}
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
            }
            .frame(width: 200, height: 200)
        }
}

struct ProfileViewController_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewController()
    }
}

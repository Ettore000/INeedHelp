//
//  ProfilePhoto.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct ProfilePhotoUIView: View {
    var body: some View {
        ZStack {
            GradientBackground()
            VStack {
                Text("Profile photo here")
                    .foregroundColor(.white)
            }
        }
    }
}

struct ProfilePhotoUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoUIView()
    }
}

//
//  PostUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 22/02/23.

import SwiftUI

struct PostUIView: View {
    let authorName: String
    let authorImageName: String
    let title: String
    let bodyText: String
    let likesCount: Int
    let timestamp: Date
    let postCat: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 8) {
                Image(authorImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                Text(authorName)
                    .font(.title2)
                Spacer()
                Text(timeAgoDisplay())
                    .font(.caption)
            }
            Text(title)
                .font(.headline)
            Text(bodyText)
                .font(.body)
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                Text("\(likesCount) Likes")
                Spacer()
                Text("\(postCat)")
            }
            .background(Color(UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)))
            .cornerRadius(15)
        }
        .padding(.horizontal)
    }
    
    func timeAgoDisplay() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .abbreviated
        return formatter.localizedString(for: timestamp, relativeTo: Date())
    }
}

struct PostUIView_Previews: PreviewProvider {
    static var previews: some View {
        PostUIView(authorName: "Marco Abbate",
                   authorImageName: "fp2",
                   title: "My cat is running everywhere in the house",
                   bodyText: "I love my cat, but she's always on the move. She runs up and down...",
                   likesCount: 45,
                   timestamp: Date().addingTimeInterval(-3600),
                   postCat: "Animals"
        )
    }
}

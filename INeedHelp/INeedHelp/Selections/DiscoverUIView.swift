//
//  DiscoverUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct DiscoverUIView: View {
    var body: some View {
        Button(action: {
                    // Azione da eseguire quando viene premuto il pulsante
                    print("Button tapped")
                }) {
                    HStack {
                        Text("Impostazioni")
                            .font(.headline)
                            .foregroundColor(.primary)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray.opacity(0.1)))
                }
                .buttonStyle(PlainButtonStyle())
    }
}

struct DiscoverUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverUIView()
    }
}

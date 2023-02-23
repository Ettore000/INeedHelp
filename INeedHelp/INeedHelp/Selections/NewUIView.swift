//
//  NewUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct NewUIView: View {
    @State private var searchText = ""
    @State private var isLinkActive = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackground()
                ZStack {
                    VStack {
                        HStack {
                            Text("New")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                            Spacer()
                        }
                        Spacer()
                        RoundedRectangle(cornerRadius: 35)
                            .fill(Color.white)
                            .ignoresSafeArea()
                            .overlay(
                                //NavigationView {
                                    VStack {
                                        HStack {
                                            Button(action: {
                                                // Do something to cancel and go back
                                            }, label: {
                                                Image(systemName: "xmark")
                                                    .foregroundColor(.black)
                                            })
                                            Spacer()
                                            NavigationLink(
                                                destination: NextPage(),
                                                isActive: $isLinkActive,
                                                label: {
                                                    Text("Avanti")
                                                })
                                        }
                                        .padding()
                                        TextField(searchText, text: $searchText)
                                            .padding()
                                        Text("What are you thinking about?")
                                            .font(.headline)
                                            .padding()
                                        HStack {
                                            Button("Text") {
                                                // Do something when the Text button is pressed
                                            }
                                            Button("Link") {
                                                // Do something when the Link button is pressed
                                                isLinkActive = true
                                            }
                                            Button("Image") {
                                                // Do something when the Image button is pressed
                                            }
                                            Button("Video") {
                                                // Do something when the Video button is pressed
                                            }
                                            Button("Survey") {
                                                // Do something when the Survey button is pressed
                                            }
                                        }
                                        .padding()
                                        Spacer()
                                    }
                                    .navigationBarHidden(true)
                                //}
                            )
                    }
                }
            }
        }
    }
}

struct NextPage: View {
    var body: some View {
        // Code for the next page goes here
        Text("Next Page")
    }
}

struct NewUIView_Previews: PreviewProvider {
    static var previews: some View {
        NewUIView()
    }
}

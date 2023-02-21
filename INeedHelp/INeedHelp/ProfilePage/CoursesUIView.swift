//
//  CoursesViewController.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct CoursesUIView: View {
    @State private var cerca: String = ""
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    Text("Find a best")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    Spacer()
                }
                HStack{
                    Text("course for you!")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    Spacer()
                }
                Spacer()
                
            }
            TextField("Name*", text: $cerca)
                .padding()
                .background(Color.white.opacity(0.93))
                .cornerRadius(15)
            
        }
        
    }
}

struct CoursesUIView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesUIView()
    }
}

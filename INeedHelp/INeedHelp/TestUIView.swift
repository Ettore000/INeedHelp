//
//  TestUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.

import SwiftUI

struct TestUIView: View {
    @State private var showDetails = false
    
    var body: some View {
        ZStack {
            GradientBackground()
            VStack {
                Button("Mostra dettagli") {
                    withAnimation {
                        self.showDetails.toggle()
                    }
                }
                if showDetails {
                    DetailsView()
                        .transition(.move(edge: .top))
                }
            }
        }
    }
}

struct TestUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestUIView()
    }
}

struct DetailsView: View {
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            Text("Dettagli della pagina")
        }
    }
}

//
//  EditNameUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.
//

import SwiftUI

struct EditNameUIView: View {
    @State private var showingPopup = false
    @State private var name = ""
    @State private var buttonText = "Premi per inserire il nome"
    
    var body: some View {
        VStack {
            Button(action: {
                self.showingPopup = true
            }) {
                Text(buttonText)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            
            if showingPopup {
                ZStack {
                    Color.white
                        .opacity(0.5)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Text("Inserisci il tuo nome")
                            .font(.title)
                            .padding()
                        
                        TextField("Nome", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        Button(action: {
                            self.buttonText = name
                            self.showingPopup = false
                        }) {
                            Text("Conferma nome")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding()
                    }
                    .frame(width: 300, height: 200)
                    .background(Color.white)
                    .cornerRadius(20)
                }
            }
        }
    }
}

struct EditNameUIView_Previews: PreviewProvider {
    static var previews: some View {
        EditNameUIView()
    }
}

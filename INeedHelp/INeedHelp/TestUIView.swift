//
//  TestUIView.swift
//  INeedHelp
//
//  Created by ettoreantoniopanasia on 21/02/23.

import SwiftUI
import AuthenticationServices

struct TestUIView: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            // Logo e campi di testo per l'email e la password
            // ...
            
            // Pulsante di login standard
            Button("Login", action: {
                // Gestisci il login standard qui
            })
            .padding()
            
            // Pulsante "Continue with Apple"
            SignInWithAppleButton(
                onRequest: { request in
                    // Imposta le richieste di accesso necessarie qui
                },
                onCompletion: { result in
                    // Gestisci il risultato del login con Apple qui
                }
            )
            .frame(width: 280, height: 50)
            .padding()
            
            // Pulsante "Continue with Google"
            Button(action: {
                // Gestisci il login con Google qui
            }) {
                HStack {
                    Image(systemName: "g.circle")
                    Text("Continue with Google")
                }
            }
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct TestUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestUIView()
    }
}

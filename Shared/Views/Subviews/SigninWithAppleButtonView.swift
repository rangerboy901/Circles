//
//  SigninWithAppleButtonView.swift
//  Circles
//
//  Created by Joseph DeWeese on 6/8/22.
//

import Foundation
import SwiftUI
import AuthenticationServices

struct SigninWithAppleButtonView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton(authorizationButtonType: .default,
                                            authorizationButtonStyle: .whiteOutline)
    }
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {}
}

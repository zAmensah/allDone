//
//  PasswordSecureField.swift
//  AllDone
//
//  Created by Albert Mensah on 19/06/2022.
//

import SwiftUI

struct PasswordSecureField: View {
    
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        CustomSecuredField(text: $text, placholder: Text(placeholder))
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}

struct PasswordSecureField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroudGradientView()
            PasswordSecureField(text: .constant(""), placeholder: "Password")
        }
    }
}

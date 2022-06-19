//
//  CustomSecuredField.swift
//  AllDone
//
//  Created by Albert Mensah on 19/06/2022.
//

import SwiftUI

struct CustomSecuredField: View {
    
    @Binding var text: String
    let placholder: Text
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 40)
            }
            
            HStack {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                SecureField("", text: $text)
                    .autocapitalization(.none)
                
            }
        }
    }
}

struct CustomSecuredField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroudGradientView()
            CustomSecuredField(text: .constant(""), placholder: Text("Password"))
        }
    }
}

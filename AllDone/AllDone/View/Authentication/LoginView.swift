//
//  LoginView.swift
//  AllDone
//
//  Created by Albert Mensah on 19/06/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        ZStack {
            BackgroudGradientView()
            
            VStack {
                LogoView()
                    .padding(.bottom, 25)
                    
                
                VStack(spacing: 20) {
                    EmailTextField(text: $email)
                        .padding(.horizontal, 32)
                }  // end of vstack
            } // end of vstack

        } // end of zstack

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

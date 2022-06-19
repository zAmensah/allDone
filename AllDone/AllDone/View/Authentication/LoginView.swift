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
        
        NavigationView {
            ZStack {
                BackgroudGradientView()
                
                VStack {
                    LogoView()
                        .padding(.bottom, 25)
                    
                    
                    VStack(spacing: 20) {
                        EmailTextField(text: $email)
                        PasswordSecureField(text: $password, placeholder: "Password")
                        
                    }  // end of vstack
                    .padding(.horizontal, 32)
                    
                    HStack {
                        Spacer()
                        Button {} label:{
                            Text("Forgot Password")
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 28)
                            
                        }
                    } // end of HStack
                    
                    Button{} label: {
                        AuthenticateButtonView(text: "Sign In")
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: SignupView()
                        .navigationBarHidden(true),
                                   
                                   label: {
                        HStack {
                            Text("Dont have an account?")
                                .font(.system(size: 14))
                            
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundColor(.white)
                    })
                    .padding(.bottom, 16)
                    
                } // end of vstack
                
                .padding(.top, -44)
                
            }
        } // end of zstack
        
    } // end of Navigation View
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

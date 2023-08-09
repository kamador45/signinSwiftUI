//
//  SignInView.swift
//  SignInScreen
//
//  Created by Kevin Amador Rios on 8/9/23.
//

import SwiftUI

struct SignInView: View {
    
    //Call ViewModel
    @ObservedObject var signInViewModel = SignInViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Logo container
                VStack {
                    Image(systemName: "lock.fill")
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 50, height: 70)
                }
                .padding(.top, 20)
                
                //Fields container
                VStack {
                    HStack {
                        EmailFieldView(title: "Email", width: UIScreen.main.bounds.width - 55, data: $signInViewModel.email)
                    }
                    .padding(.top, 3)
                    
                    HStack {
                        PasswordFieldView(title: "Password", width: UIScreen.main.bounds.width - 55, data: $signInViewModel.password)
                    }
                    .padding(.top, 3)
                }
                .frame(width: UIScreen.main.bounds.width - 50)
                .padding(.top, 10)
                
                //Action buttons
                VStack {
                    HStack {
                        Group {
                            Button {
                                signInViewModel.signIn()
                            } label: {
                                Image(systemName: "person.badge.key.fill")
                                    .foregroundColor(.blue)
                                 Text("Sign In")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                            }
                            Spacer()
                            Button {
                                print("Forgot password")
                            } label: {
                                Image(systemName: "ellipsis.rectangle.fill")
                                    .foregroundColor(.blue)
                                 Text("Forgot password!")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                            }
                        }
                    }
                    .padding(.top, 10)
                    
                    HStack {
                        Button {
                            print("Sign up user")
                        } label: {
                            Image(systemName: "person.fill.badge.plus")
                                .foregroundColor(.blue)
                            Text("Sign Up")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 40,alignment: .leading)
                    .padding(.top, 5)
                }
                .frame(width: UIScreen.main.bounds.width - 40)
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 100)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

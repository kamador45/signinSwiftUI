//
//  SignInViewModel.swift
//  SignInScreen
//
//  Created by Kevin Amador Rios on 8/9/23.
//

import Foundation
import Combine

class SignInViewModel: ObservableObject {
    
    //Will capture data from binding
    @Published var email:String = ""
    @Published var password:String = ""
    
    //this function will show in console the data of Email and Password field typed by user.
    func signIn() {
        print("Email ===>\(email)")
        print("Password ===>\(password)")
    }
}

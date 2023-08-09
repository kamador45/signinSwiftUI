//
//  PasswordFieldView.swift
//  SignInScreen
//
//  Created by Kevin Amador Rios on 8/9/23.
//

import SwiftUI

struct PasswordFieldView: View {
    //define kind of field
    var typeField:UITextContentType = .password
    //define title
    var title:String = ""
    //define width
    var width:CGFloat?
    //Define how to capture password and pass it to mvvm
    @Binding var data:String
    
    var body: some View {
        VStack {
            SecureField(title, text:$data)
                .frame(width: width, height: 55, alignment: .leading)
                .padding([.horizontal], 8)
                .textContentType(.password)
                .keyboardType(.alphabet)
                .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray))
                .fixedSize()
        }
    }
}

//
//  EmailFieldView.swift
//  SignInScreen
//
//  Created by Kevin Amador Rios on 8/9/23.
//

import SwiftUI

struct EmailFieldView: View {
    //Defining kid of field
    var typeField: UITextContentType = .emailAddress
    //Defining title of field
    var title:String = ""
    //Defining width
    var width:CGFloat?
    //Define how to capture and pass data from textfield to mvvm
    @Binding var data:String
    
    var body: some View {
        VStack {
            TextField(title, text: $data)
                .frame(width: width, height: 55, alignment: .leading)
                .padding([.horizontal], 8)
                .textContentType(typeField)
                .keyboardType(.emailAddress)
                .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray))
                .fixedSize()
        }
    }
}

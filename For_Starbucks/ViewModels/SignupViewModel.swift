//
//  SignupViewModel.swift
//  For_Starbucks
//
//  Created by 민영조 on 3/26/25.
//

import Foundation
import SwiftUI

class SignupViewModel: ObservableObject {
    @Published var user = SignupModel()
    
    @AppStorage("nickname") var savedNickname: String = ""
    @AppStorage("email") var savedEmail: String = ""
    @AppStorage("password") var savedPassword: String = ""
    
    func saveToAppStorage() {
        savedNickname = user.nickname
        savedEmail = user.email
        savedPassword = user.password
        print("회원가입 저장 완료")
    }
}

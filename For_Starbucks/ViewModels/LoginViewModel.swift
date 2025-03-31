//
//  LoginViewModel.swift
//  For_Starbucks
//
//  Created by 민영조 on 3/24/25.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var userID: String = ""
    @Published var password: String = ""

    @Published var isUserIDFocused: Bool = false
    @Published var isPasswordFocused: Bool = false
}

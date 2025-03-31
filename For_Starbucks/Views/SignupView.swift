//
//  SignupView.swift
//  For_Starbucks
//
//  Created by 민영조 on 3/26/25.
//

import SwiftUI

struct SignupView: View {
    @ObservedObject var viewModel = SignupViewModel()
    @FocusState private var focusedField: Field?

    enum Field: Hashable {
        case nickname, email, password
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            headerView
            Spacer()
            signupButton
        }
        .padding(.horizontal, 24)
    }

    private var headerView: some View {
        HStack(alignment: .top, spacing: 220) {
            Image("Frame2")
                .resizable()
                .frame(width: 95, height: 44)
            Image("Frame1")
                .resizable()
                .frame(width: 95, height: 44)
        }
        .padding(.top, 10)
        .padding(.horizontal, 10)
    }



    private var signupButton: some View {
        HStack(alignment: .center, spacing: 10) {
            Spacer()
            Text("생성하기")
                .font(Font.custom("Pretendard-Medium", size: 16))
                .foregroundColor(.white)
            Spacer()
        }
        .padding(.horizontal, 167)
        .padding(.vertical, 19)
        .frame(maxWidth: .infinity, minHeight: 58, maxHeight: 58, alignment: .center)
        .background(Color(red: 0, green: 0.66, blue: 0.38))
        .cornerRadius(20)
        .onTapGesture {
            viewModel.saveToAppStorage()
        }
    }
}

#Preview {
    SignupView(viewModel: SignupViewModel())
}

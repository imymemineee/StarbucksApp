//
//  LoginView.swift
//  For_Starbucks
//
//  Created by 민영조 on 3/24/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @FocusState private var focusedField: Field?

    enum Field {
        case userID, password
    }

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .leading, spacing: 50) {
                headerView
                titleSection
                inputSection
                loginSection
            }
    
            Spacer()
        }
        .padding(0)
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
        .padding(.top, -50)
        .padding(.horizontal, 24)
    }

    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 17) {
            Spacer().frame(height: 30)
            Image("Logo")
                .resizable()
                .frame(width: 97, height: 95)
                .padding(.bottom, 10)

            Text("안녕하세요.\n스타벅스입니다.")
                .font(Font.custom("Pretendard-Bold", size: 24))
                .kerning(1.4)
                .foregroundColor(.black)

            Text("회원 서비스 이용을 위해 로그인 해주세요")
                .font(Font.custom("Pretendard-Regular", size: 15))
                .foregroundColor(.gray)
                .kerning(0.08)
                .padding(.bottom, 40)
        }
        .padding(.horizontal, 40)
    }

    private var inputSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(spacing: 4) {
                TextField("아이디", text: $viewModel.userID)
                    .focused($focusedField, equals: .userID)
                    .onChange(of: focusedField) { _, newValue in
                        viewModel.isUserIDFocused = (newValue == .userID)
                    }
                    .font(.custom("Pretendard-Regular", size: 12))
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(viewModel.isUserIDFocused ? .green : .gray),
                        alignment: .bottom
                    )
            }
            .padding(.bottom, 40)

            VStack(spacing: 4) {
                SecureField("비밀번호", text: $viewModel.password)
                    .focused($focusedField, equals: .password)
                    .onChange(of: focusedField) { _, newValue in
                        viewModel.isPasswordFocused = (newValue == .password)
                    }
                    .font(.custom("Pretendard-Regular", size: 12))
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(viewModel.isPasswordFocused ? .green : .gray),
                        alignment: .bottom
                    )
            }
        }
        .padding(.horizontal, 40)
    }

    private var loginSection: some View {
        VStack(spacing: 16) {
            Button(action: {
                print("로그인 버튼 클릭")
            }) {
                Text("로그인하기")
                    .font(.custom("Pretendard-Medium", size: 16))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(30)
                    .padding(.bottom, 70)
                    .padding(.leading, 18)
            }

            Text("이메일로 회원가입하기")
                .font(.custom("Pretendard-Regular", size: 11))
                .foregroundColor(.gray)
                .padding(.leading, 18)
                .underline()

            Image("Kakao")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 48)
                .padding(.leading, 18)

            Image("Apple")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 48)
                .padding(.leading, 18)
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    LoginView()
}

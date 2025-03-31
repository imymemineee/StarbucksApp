//
//  AdpopView.swift
//  For_Starbucks
//
//  Created by 민영조 on 3/26/25.
//

import SwiftUI

struct AdPopupView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 24) {
            
            Image("advertisement") //
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)

            Button(action: {
                print("자세히 보기")
            }) {
                Text("자세히 보기")
                    .font(.custom("Pretendard-Regular", size: 16))
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(12)
            }

            Button(action: {
                dismiss()
            }) {
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 28))
                    .foregroundColor(.gray)
            }
            .padding(.top, 12)
        }
        .padding()
    }
}

#Preview {
    AdPopupView()
}

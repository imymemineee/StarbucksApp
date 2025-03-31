//
//  SplashView.swift
//  For_Starbucks
//
//  Created by 민영조 on 3/24/25.
//

import SwiftUI

struct SplashView: View {
    
    var body: some View {
            VStack {
                headerView
                centerview
            }
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
        .padding(.top, 40)
        .padding(.horizontal, 10)
        .zIndex(1)
    }

    private var centerview: some View {
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 148, height: 148)
              .background(
                Image("Logo")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .offset(y: -60)
              )
        }
        .frame(width: 440, height: 956)
        .background(Color(red: 0, green: 0.66, blue: 0.38))
    }
    
}

#Preview {
    SplashView()
}

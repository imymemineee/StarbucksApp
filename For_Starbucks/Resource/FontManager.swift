//
//  FontManager.swift
//  For_Starbucks
//
//  Created by 민영조 on 3/24/25.
//
import Foundation
import SwiftUI

extension Font {
    enum Pretend {
        case extraBold
        case bold
        case medium
        case regular
        
        var value: String {
            switch self {
            case .extraBold:
                return "Pretendard-ExtraBold"
            case .regular:
                return "Pretendard-Regular"
            case .bold:
                return "Pretendard-Bold"
            case .medium:
                return "Pretendard-Medium"

            }
        }
    }

    static func pretend(_ type: Font.Pretend, size: CGFloat) -> Font {
        return .custom(type.value, size: size)
    }
    
    static var PretendardMedium16: Font {
        return .pretend(.medium, size: 16)
    }
    
    static var PretendardRegular14: Font {
        return .pretend(.regular, size: 14)
    }
    
    static var PretendardBold30: Font {
        return .pretend(.bold, size: 30)
    }
    
    static var PretendardExtraBold24: Font {
        return .pretend(.extraBold, size: 24)
    }


}




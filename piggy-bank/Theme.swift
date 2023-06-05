//
//  Theme.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 05/06/2023.
//

import Foundation
import UIKit

struct DarkTheme {
    static let backgroundColor = UIColor(rgb: 0x0D0D0D)
    static let primaryColor = UIColor(rgb: 0x00FFB3)
    static let containerColor = UIColor(rgb: 0x1C1D29)
    static let greyButtonColor = UIColor(rgb: 0x292929)
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}

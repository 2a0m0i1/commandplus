//
//  UIcolor+.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/15.
//

import Foundation
import UIKit

extension UIColor {
    class func rgba(red: Int, green: Int, blue: Int, alpha: CGFloat) -> UIColor{
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
}

//
//  UIColor.swift
//  A4Paper
//
//  Created by AlphaZ on 2018/9/9.
//  Copyright © 2018年 Zhang,Dong(AI). All rights reserved.
//



import UIKit

// MARK: - rgba from UIColor
extension UIColor {
    func rgba() -> (CGFloat,CGFloat,CGFloat,CGFloat) {
        return self.cgColor.rgba()
    }
}


// MARK: - UIColor+Hex
extension UIColor {

    public convenience init(hexColor vector: UInt32, alpha: CGFloat = 1.0) {
        let red: CGFloat = CGFloat((vector & 0xff0000) >> 16) / 255.0
        let green: CGFloat  = CGFloat((vector & 0xff00) >> 8) / 255.0
        let blue: CGFloat  = CGFloat(vector & 0xff) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }

    public convenience init(R red: UInt8, G: UInt8, B: UInt8, alpha: CGFloat = 1.0) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(G) / 255.0, blue: CGFloat(B) / 255.0, alpha: alpha)
    }

    public convenience init(_ r: UInt8, g: UInt8, b: UInt8, a: CGFloat = 1.0) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: a)
    }

    public convenience init(_ R: UInt8, _ G: UInt8, _ B: UInt8, _ alpha: CGFloat = 1.0) {
        self.init(R: R, G: G, B: B, alpha: alpha)
    }

}

// MARK: - UIColor+Image
extension UIColor {

    public var image: UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()

        context!.setFillColor(self.cgColor)
        context?.fill(rect)

        let theImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return theImage!
    }

}

// MARK: - UIImage+Color
extension UIImage {

    public class func image(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()

        context!.setFillColor(color.cgColor)
        context?.fill(rect)

        let theImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return theImage!
    }

}



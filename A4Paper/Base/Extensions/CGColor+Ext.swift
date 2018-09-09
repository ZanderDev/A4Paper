//
//  CGColor.swift
//  A4Paper
//
//  Created by AlphaZ on 2018/9/9.
//  Copyright © 2018年 Zhang,Dong(AI). All rights reserved.
//
import UIKit

// MARK: - rgba from CGColor
extension CGColor {


    func rgba() -> (CGFloat,CGFloat,CGFloat,CGFloat) {

        var r:CGFloat = -1
        var g:CGFloat = -1
        var b:CGFloat = -1
        var a:CGFloat = -1

        let cgColor = self
        if cgColor.numberOfComponents == 4, let components = cgColor.components{
            r = components[0] * 255
            g = components[1] * 255
            b = components[2] * 255
            a = components[3] * 255
        }

        NSLog("%f - %f - %f - %f ", r,g,b,a)

        let rgba = (r,g,b,a)
        return rgba

    }


}

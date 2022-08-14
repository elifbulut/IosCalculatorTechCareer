//
//  buttonDesign.swift
//  techCareerIosCalculator
//
//  Created by Elıf on 14.08.2022.
//

import UIKit

class buttonDesign: UIButton {

    @IBInspectable var buttons:Bool = false {
        didSet {
            if buttons {
                layer.cornerRadius = frame.height / 2
                layer.shadowOpacity = 0.8
                layer.shadowOffset = CGSize(width: 1, height: 1)
                layer.borderWidth = 2
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if buttons {
            layer.cornerRadius = frame.height / 2
            layer.shadowOpacity = 0.8

        }
    }

}

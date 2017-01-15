//
//  RoundedButton.swift
//  RoundedButton
//
//  Created by Cesar Pinto Castillo on 2017-01-15.
//  Copyright © 2017 JagCesar. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()

        layer.borderWidth = 1/UIScreen.main.nativeScale
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        titleLabel?.adjustsFontForContentSizeCategory = true
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height/2
        layer.borderColor = isEnabled ? tintColor.cgColor : UIColor.lightGray.cgColor
    }
}

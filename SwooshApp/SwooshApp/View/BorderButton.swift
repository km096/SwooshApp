//
//  BorderButton.swift
//  SwooshApp
//
//  Created by ME-MAC on 12/12/22.
//

import UIKit

class BorderButton: UIButton {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.black.cgColor
    }

    

}

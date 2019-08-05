//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Giselle Tavares on 2019-08-05.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}

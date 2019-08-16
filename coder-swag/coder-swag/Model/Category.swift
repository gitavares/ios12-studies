//
//  Category.swift
//  coder-swag
//
//  Created by Giselle Tavares on 2019-08-11.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}

//
//  CategoryCellTableViewCell.swift
//  coder-swag
//
//  Created by Giselle Tavares on 2019-08-11.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}

//
//  ParallaxCell.swift
//  accelerometron
//
//  Created by Giselle Tavares on 2019-08-16.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        setupParallax()
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String){
        itemImageView.image = image
        descriptionLabel.text = desc
    }
    
    func setupParallax(){
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        itemImageView.addMotionEffect(motionEffectGroup)
        
    }

}

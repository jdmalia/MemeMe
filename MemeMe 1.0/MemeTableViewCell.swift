//
//  MemeTableViewCell.swift
//  MemeMe
//
//  Created by Jason Malia on 9/27/16.
//  Copyright © 2016 Jason Malia. All rights reserved.
//

import UIKit

class MemeTableViewCell: UITableViewCell {
    

    override func layoutSubviews() {
        
        self.detailTextLabel?.isHidden = true
        
        var imageMaxX: CGFloat = 0
        let textSpacing: CGFloat = 15
        
        super.layoutSubviews()
        if let imageView = self.imageView {
            let dimension = imageView.frame.height
            imageView.frame = CGRect(x: 0, y: 0, width: dimension, height: dimension)
            imageMaxX = imageView.frame.maxX
        }
        
        if let textLabel = self.textLabel {
            let x = imageMaxX + textSpacing
            let y = textLabel.frame.minY
            let w = self.frame.maxX - textSpacing - x
            let h = textLabel.frame.height
            textLabel.frame = CGRect(x: x, y: y, width: w, height: h)
        }
    }

}

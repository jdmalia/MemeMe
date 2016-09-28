//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Jason Malia on 9/27/16.
//  Copyright © 2016 Jason Malia. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    var meme: Meme!
    
    @IBOutlet weak var memeImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        memeImage.image = meme.memedImage
    }

}

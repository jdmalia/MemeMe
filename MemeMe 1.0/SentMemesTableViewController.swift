//
//  SentMemesTableViewController.swift
//  MemeMe
//
//  Created by Jason Malia on 9/27/16.
//  Copyright © 2016 Jason Malia. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UITableViewController {
    
    var memes: [Meme]!
    
    override func viewWillAppear(_ animated: Bool) {
        self.memes = (UIApplication.shared.delegate as! AppDelegate).memes
        self.tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableCell", for: indexPath) as! MemeTableViewCell
        
        cell.imageView?.image = memes[indexPath.row].memedImage
        cell.textLabel?.text = memes[indexPath.row].topText + "..." + memes[indexPath.row].bottomText
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let memeDetailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        memeDetailController.meme = self.memes[indexPath.row]
        self.navigationController!.pushViewController(memeDetailController, animated: true)
    }

}

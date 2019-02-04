//
//  MemeTableViewController.swift
//  MemeMe1.0
//
//  Created by ابرار on ٥ جما١، ١٤٤٠ هـ.
//  Copyright © ١٤٤٠ هـ Udacity. All rights reserved.
//

import Foundation
import UIKit
class MemeTableViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    
    @IBOutlet weak var tableViewMemes: UITableView!
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableViewMemes.reloadData()
    }
    
  
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            
            let detailController = self.storyboard!.instantiateViewController(withIdentifier: "showDetails") as! MemeDetails
            detailController.image = memes[indexPath.row].memedImage
            
            self.navigationController!.pushViewController(detailController, animated: true)
            
        }
        
    
    
   
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            
            return memes.count
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "memeTableCell") as! MemeTableViewCell
            
            cell.imageViewMeme.image = memes[indexPath.row].memedImage
            cell.topLable?.text = memes[indexPath.row].topText
            cell.bottomLabel?.text = memes[indexPath.row].bottomText
            
            return cell
            
        }
}

//
//  MemeTableViewCell.swift
//  MemeMe1.0
//
//  Created by ابرار on ٨ جما١، ١٤٤٠ هـ.
//  Copyright © ١٤٤٠ هـ Udacity. All rights reserved.
//

import Foundation
import UIKit
class MemeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var topLable: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var imageViewMeme: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

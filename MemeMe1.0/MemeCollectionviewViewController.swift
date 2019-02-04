//
//  MemeCollectionviewViewController.swift
//  MemeMe1.0
//
//  Created by ابرار on ٥ جما١، ١٤٤٠ هـ.
//  Copyright © ١٤٤٠ هـ Udacity. All rights reserved.
//

import Foundation
import UIKit
class MemeCollectionviewViewController: UIViewController , UICollectionViewDataSource ,  UICollectionViewDelegate{
@IBOutlet weak var collectionViewMemes: UICollectionView!

@IBOutlet weak var flowLayout: UICollectionViewFlowLayout!

var memes: [Meme]! {
    let object = UIApplication.shared.delegate
    let appDelegate = object as! AppDelegate
    return appDelegate.memes
}

override func viewDidLoad() {
    super.viewDidLoad()
    
    setFlowLayout()
    
}

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    collectionViewMemes.reloadData()
}

func setFlowLayout(){
    let space:CGFloat = 3.0
    let dimension = (view.frame.size.width - (2 * space)) / 3.0
    
    flowLayout.minimumInteritemSpacing = space
    flowLayout.minimumLineSpacing = space
    flowLayout.itemSize = CGSize(width: dimension, height: dimension)
}


func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    
    let detailController = self.storyboard!.instantiateViewController(withIdentifier: "showDetails") as!  MemeDetails
    detailController.image = memes[indexPath.row].memedImage
    
    self.navigationController!.pushViewController(detailController, animated: true)
    
}
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewMemes.dequeueReusableCell(withReuseIdentifier: "MemesCollectionViewCell", for: indexPath) as!  MemeCollectionViewCell
        
        cell.imageViewMeme.image = memes[indexPath.row].memedImage
        
        return cell
    }


}

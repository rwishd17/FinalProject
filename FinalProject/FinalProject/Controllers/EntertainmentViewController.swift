//
//  ItemsViewController.swift
//  FinalProject
//
//  Created by Rashed Shrahili on 20/02/1444 AH.
//

import UIKit

class EntertainmentViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var EntertainmentCollectionView: UICollectionView!
    
    //MARK: - Variables
//    var comeSegue:String?
//    var count:Int?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        EntertainmentCollectionView.dataSource = self
        EntertainmentCollectionView.delegate = self
        
        EntertainmentCollectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "itemCell")
        
    }
    
    
    
}

extension EntertainmentViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return entertainmentArr.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ItemCollectionViewCell
        
        item.layer.cornerRadius = 16
        item.layer.masksToBounds = true
            
        item.itemLabel.text = entertainmentArr[indexPath.item].e_name
        
        return item
    }
    
    
    
}

extension EntertainmentViewController : UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "\(indexPath.item)", sender: nil)
        
    }
    
}

//
//  EducationViewController.swift
//  FinalProject
//
//  Created by Rashed Shrahili on 22/02/1444 AH.
//

import UIKit

class EducationViewController: UIViewController {
    
    @IBOutlet weak var educationCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        educationCollectionView.dataSource = self
        educationCollectionView.delegate = self
        
        educationCollectionView.register(UINib(nibName: "EduCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "eduCell")
        
    }
    
    
    
}

extension EducationViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return eduactionArr.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "eduCell", for: indexPath) as! EduCollectionViewCell
        
        item.layer.cornerRadius = 16
        item.layer.masksToBounds = true
            
        item.eduLabel.text = eduactionArr[indexPath.item].edu_name
        
        return item
    }
    
    
    
}

extension EducationViewController : UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "\(indexPath.item)", sender: nil)
        
    }
    
}

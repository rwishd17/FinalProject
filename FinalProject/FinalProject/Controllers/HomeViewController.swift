//
//  HomeViewController.swift
//  FinalProject
//
//  Created by Rashed Shrahili on 20/02/1444 AH.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBAction
    @IBAction func entertainmentAction(_ sender: Any) {
        
        performSegue(withIdentifier: "entertainmentSegue", sender: nil)
        
    }
    
    @IBAction func educationAction(_ sender: Any) {
        
        performSegue(withIdentifier: "educationSegue", sender: nil)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if segue.identifier == "entertainmentSegue" {
//
//            if let viewVC = segue.destination as? EntertainmentViewController {
//
//                viewVC.comeSegue = "entertainmentSegue"
//            }
//
//        }
        
//        if segue.identifier == "educationSegue" {
//
//            if let viewVC = segue.destination as? EntertainmentViewController {
//
//                viewVC.comeSegue = "educationSegue"
//            }
//
//        }
        
    }
    
}

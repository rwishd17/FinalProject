//
//  LanuchViewController.swift
//  FinalProject
//
//  Created by Rashed Shrahili on 22/02/1444 AH.
//

import UIKit

class LanuchViewController: UIViewController {
    
    @IBOutlet weak var launchIconImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UIView.animate(withDuration: 2.5, delay: 0, options: []) {
            
            let size = self.view.frame.size.width * 3
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            
            self.launchIconImageView.frame = CGRect(
                x: -(diffX / 2),
                y: diffY / 2,
                width: size,
                height: size
                
            )}
        
        UIView.animate(withDuration: 2, delay: 0, options: []) {
            
            self.launchIconImageView.alpha = 0
            
        } completion: { completed in
            
            if completed {
                
//                let vcView = UINavigationController()
//                vcView.modalTransitionStyle = .crossDissolve
//                vcView.modalPresentationStyle = .fullScreen
//                self.present(vcView, animated: true)
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    
                    self.transitionToApp()
                    
                }
                
            }
            
        }


    }
    
    func transitionToApp() {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let firstViewController = storyBoard.instantiateViewController(withIdentifier: "firstView") as! UINavigationController
        firstViewController.modalTransitionStyle = .crossDissolve
        firstViewController.modalPresentationStyle = .fullScreen
        self.present(firstViewController, animated:true, completion:nil)
    }
    
}

//
//  SolarSystemViewController.swift
//  FinalProject
//
//  Created by Rashed Shrahili on 23/02/1444 AH.
//

import UIKit
import RealityKit

class SolarSystemViewController: UIViewController {
    
    @IBOutlet weak var arView: ARView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        SolarSystem.loadSceneAsync { [weak self] result in
            switch result {
            case .failure(let error):
                print(error.localizedDescription)
            case .success(let solarSystem):
                self?.arView.scene.anchors.append(solarSystem)
            }
        }
    }
    
    
    
}

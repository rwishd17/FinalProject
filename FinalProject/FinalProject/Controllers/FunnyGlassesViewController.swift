//
//  FunnyGlassesViewController.swift
//  FinalProject
//
//  Created by Rashed Shrahili on 22/02/1444 AH.
//

import UIKit
import RealityKit

class FunnyGlassesViewController: UIViewController {
    
    @IBOutlet weak var arView: ARView!
    
    // Load the "Box" scene from the "Experience" Reality File
    let boxAnchor = try! FunnyGlasses.loadScene()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
    
    
    
}

//
//  ViewController.swift
//  iosReality
//
//  Created by mac book on 19/09/2022.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bool = try! BoolApp.loadScene()
        
        arView.scene.anchors.append(bool)
    }
}

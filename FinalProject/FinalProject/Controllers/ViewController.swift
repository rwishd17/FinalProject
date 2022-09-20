//
//  ViewController.swift
//  FinalProject
//
//  Created by Rashed Shrahili on 19/02/1444 AH.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score = 0
    
    
    // Load the "Box" scene from the "Experience" Reality File
    let boxAnchor = try! Tajma.loadBox()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        boxAnchor.actions.gameWin.onAction = notificationID   // listener
        
        scoreLabel.text = "Score : \(score)"
    }
    
    fileprivate func notificationID(_ entity: Entity?) {
        
//         print(boxAnchor.actions.behavior.identifier)
        
        score += 1
        
        scoreLabel.text = "Score : \(score)"
        
        
    }
    
}

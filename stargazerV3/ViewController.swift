//
//  ViewController.swift
//  stargazerV3
//
//  Created by Student on 13/06/2019.
//  Copyright © 2019 Dominic. All rights reserved.
//

import UIKit
import ARKit
import SceneKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sceneView: ARSCNView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene(named: "art.scnassets/ship.scn")!
        sceneView.scene = scene
        // Do any additional setup after loading the view.
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = .horizontal
        config.worldAlignment = .gravityAndHeading
        
        sceneView.session.run(config)
        
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        addSphere()
        
    }
    
    func addSphere(){
        let sphere = SCNNode(geometry: SCNSphere(radius: 0.009))
        sphere.position = SCNVector3(Float.random(in: 0 ..< 1),1 ,Float.random(in: 0 ..< 1))
        sceneView.scene.rootNode.addChildNode(sphere)
    }
    
}


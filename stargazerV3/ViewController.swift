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
        
        // Do any additional setup after loading the view.
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = .horizontal
        config.worldAlignment = .gravityAndHeading
        
        sceneView.session.run(config)
        
        addSphere(material: "texture.jpg")
        addSphere(material: "sun.jpg")
        addSphere(material: "moon_material.jpeg")
        addSphere(material: "moon_material.jpeg")
      
        
    }
    
    func addSphere(){
        let sphere = SCNNode(geometry: SCNSphere(radius: 0.25))
        sphere.position = SCNVector3(Float.random(in: 0 ..< 5),1 ,Float.random(in: 0 ..< 5))
        sphere.geometry?.firstMaterial?.diffuse.contents = material
        sceneView.scene.rootNode.addChildNode(sphere)
    }
    
}


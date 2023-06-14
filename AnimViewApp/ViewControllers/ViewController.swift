//
//  ViewController.swift
//  AnimViewApp
//
//  Created by Юрий Емелин on 15.06.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10

    }
    
    
    @IBAction func changeAnimButton(_ sender: SpringButton) {
        animationView.animation = "shake"
        animationView.curve = "easeIn"
        animationView.force = 2
        animationView.duration = 1
        animationView.delay = 0.3
        animationView.animate()
    }
    
}

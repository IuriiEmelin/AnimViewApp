//
//  ViewController.swift
//  AnimViewApp
//
//  Created by Юрий Емелин on 15.06.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet var changeButton: UIButton!
    @IBOutlet weak var animationLabel: SpringLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
        changeButton.layer.cornerRadius = 10
        animationLabel.text = animation.description

    }
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    //MARK: - IB Action
    @IBAction func changeAnimButton(_ sender: UIButton) {
        //animationLabel.animation = "zoomOut"
        //animationLabel.x = 50
        //animationLabel.animate()
        animationLabel.text = animation.description
        
        //animationLabel.animateNext { [unowned self] in
            //animationLabel.animation = "zoomIn"
            //animationLabel.animate()
            
            animationView.animation = animation.name
            animationView.curve = animation.curve
            animationView.duration = animation.duration
            animationView.force = animation.force
            animationView.delay = animation.delay
            animationView.animate()
            
            animation = Animation.getRandomAnimation()
            sender.setTitle("Run \(animation.name)", for: .normal)
        //}
    }
}

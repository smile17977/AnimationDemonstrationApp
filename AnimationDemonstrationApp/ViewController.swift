//
//  ViewController.swift
//  AnimationDemonstrationApp
//
//  Created by Kir Pir on 17.06.2020.
//  Copyright © 2020 Kirill_Presnyakov. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = ""
    }
    
    @IBAction func springAnimationButton(_ sender: SpringButton) {
        springAnimationView.animation = DataManager.shared.animations[getRandomInt()]
        springAnimationView.curve = DataManager.shared.curves[getRandomInt()]
        animationLabel.text = springAnimationView.animation
        springAnimationView.force = CGFloat(Int.random(in: 1...4))
        springAnimationView.duration = CGFloat(Int.random(in: 1...2))
        springAnimationView.damping = CGFloat(Int.random(in: 1...2))
        springAnimationView.animate()
        
        sender.animation = "pop"
        sender.animate()
    }
    
    func getRandomInt() -> (Int) {
        Int.random(in: 0..<DataManager.shared.animations.count)
    }

}


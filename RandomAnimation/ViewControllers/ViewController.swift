//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Kirill Kniga on 17.03.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    
    private var animationCollection: AnimationCollection {
        AnimationCollection.getAnimation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabels()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func runButtonTapped(_ sender: SpringButton) {
        springAnimationView.animate()
        sender.setTitle("Run \(animationCollection.preset)", for: .normal)
        setUpLabels()
    }
}
// MARK: extension ViewController
extension ViewController {
    private func setUpLabels() {
        presetLabel.text = "Preset: \(animationCollection.preset)"
        curveLabel.text = "Curve: \(animationCollection.curve)"
        forceLabel.text = "Force: \(animationCollection.force)"
        durationLabel.text = "Duration: \(animationCollection.duration)"
        delayLabel.text = "Delay: \(animationCollection.delay)"
        
        springAnimationView.animation = animationCollection.preset
        springAnimationView.curve = animationCollection.curve
        springAnimationView.force = animationCollection.force
        springAnimationView.duration = animationCollection.duration
        springAnimationView.delay = animationCollection.delay
    }
}

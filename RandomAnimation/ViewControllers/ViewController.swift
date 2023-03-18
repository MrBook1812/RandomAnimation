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
    
    private var animationCollection = AnimationCollection.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabels()
    }
    
    @IBAction func runButtonTapped(_ sender: SpringButton) {
        setAnimation()
        springAnimationView.animate()
        setUpLabels()
        animationCollection = AnimationCollection.getAnimation()
        sender.setTitle("Run \(animationCollection.preset)", for: .normal)
    }
}
// MARK: extension ViewController
extension ViewController {
    private func setUpLabels() {
        let collection = animationCollection
        presetLabel.text = "Preset: \(collection.preset)"
        curveLabel.text = "Curve: \(collection.curve)"
        forceLabel.text = "Force: \(collection.force)"
        durationLabel.text = "Duration: \(collection.duration)"
        delayLabel.text = "Delay: \(collection.delay)"
    }
    private func setAnimation() {
        let collection = animationCollection
        springAnimationView.animation = collection.preset
        springAnimationView.curve = collection.curve
        springAnimationView.force = collection.force
        springAnimationView.duration = collection.duration
        springAnimationView.delay = collection.delay
    }
}

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
    
    @IBOutlet var springButton: SpringButton!
    
    private var animationCollection: [AnimationCollection] {
        AnimationCollection.getCollection()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelsValue()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func springButtonTapped(_ sender: SpringButton) {
        setLabelsValue()
        //setAnimationValues()
        springAnimationView.animate()
        }
}
// MARK: extension ViewController
extension ViewController {
    // MARK: viewlabels setup
    private func setLabelsValue() {
        for element in animationCollection {
            presetLabel.text = "Preset: \(element.preset)"
            curveLabel.text = "Curve: \(element.curve)"
            forceLabel.text = "Force: \(element.force)"
            durationLabel.text = "Duration: \(element.duration)"
            delayLabel.text = "Delay: \(element.delay)"
            springButton.setTitle("Run \(element.preset)", for: .normal)
            springAnimationView.animation = element.preset
            springAnimationView.curve = element.curve
            springAnimationView.force = element.force
            springAnimationView.duration = element.duration
            springAnimationView.delay = element.delay
        }
    }
    private func setAnimationValues() {
        for element in animationCollection {
            springAnimationView.animation = element.preset
            springAnimationView.curve = element.curve
            springAnimationView.force = element.force
            springAnimationView.duration = element.duration
            springAnimationView.delay = element.delay
        }
    }
}

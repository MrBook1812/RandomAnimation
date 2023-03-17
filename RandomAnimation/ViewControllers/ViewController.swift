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
    
    private var animationCollection = AnimationCollection.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func springButtonTapped(_ sender: SpringButton) {
        springAnimationView.animate()
        }
}
// MARK: extension ViewController
extension ViewController {
    // MARK: viewlabels setup
    
}

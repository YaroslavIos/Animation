//
//  ViewController.swift
//  Animation
//
//  Created by Ярослав Любиченко on 16.3.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet weak var shape: SpringView!
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var animationButton: UIButton!
    
    private var animations = Animation.setAnimation()
    private var preset = ""
    private var curve = ""
    private var force = CGFloat.random(in: 1...4)
    private var duration = CGFloat.random(in: 1...2.5)
    private var delay = CGFloat.random(in: 0.3...0.8)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forceLabel.text = "Force: \(force.formatted())"
        durationLabel.text = "Duration: \(duration.formatted())"
        delayLabel.text = "Delay: \(delay.formatted())"
        getParameters()
    }
    
    @IBAction func runAnimationButton() {
        play()
        updateAnimationParameters()
    }
}

// MARK: - Private methods

private extension AnimationViewController {
    
    func getParameters() {
        let animation = animations.randomElement()!
        for parameter in [animation] {
            preset = parameter.preset
            curve = parameter.curve
        }
        presetLabel.text = "Preset: \(preset)"
        curveLabel.text = "Curve: \(curve)"
    }
    
    func play() {
        shape.animation = preset
        shape.curve = curve
        shape.force = force
        shape.duration = duration
        shape.delay = delay
        shape.animate()
    }
    
    func updateAnimationParameters() {
        let animation = animations.randomElement()!
        for parameter in [animation] {
            preset = parameter.preset
            curve = parameter.curve
        }
        
        presetLabel.text = "Preset: \(preset)"
        curveLabel.text = "Curve: \(curve)"
        animationButton.setTitle("Run \(preset)", for: .normal)
    }
}

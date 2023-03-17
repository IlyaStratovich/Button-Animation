//
//  ViewController.swift
//  Button+Animation
//
//  Created by Илья Стратович on 16.03.23.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {
//MARK: IBOutlets
    @IBOutlet var animationImage: SpringImageView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var runAnimationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       createsAnimation()
    }
    //MARK: IBActions
    @IBAction func animationButtonDidTap() {
        createsAnimation()
    }
}
//MARK: MainViewController extension
extension MainViewController {
    private func createsAnimation() {
        let preset = ImageAnimation.getSomeAnimation().preset
        
        runAnimationButton.setTitle("Run \(preset)", for: .normal)
        
        presetLabel.text = "Preset: \(preset)"
        curveLabel.text = "Curve: \(ImageAnimation.getSomeAnimation().curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", ImageAnimation.getSomeAnimation().force))"
        durationLabel.text = "Duration: \(String(format: "%.2f",ImageAnimation.getSomeAnimation().duration))"
        delayLabel.text = "Delay: \(ImageAnimation.getSomeAnimation().delay)"
        
        animationImage.animation = "\(preset)"
        animationImage.curve = "\(ImageAnimation.getSomeAnimation().curve)"
        animationImage.force = CGFloat(ImageAnimation.getSomeAnimation().force)
        animationImage.duration = CGFloat(animationImage.duration)
        animationImage.delay = CGFloat(animationImage.delay)
        animationImage.animate()
    }
}

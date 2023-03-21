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
    @IBOutlet weak var animationImage: SpringView!
    @IBOutlet weak var animationLabel: SpringLabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    //MARK: Private properties
    private var animation = Animation.getSomeAnimation()
    //MARK: IBActions
    
    @IBAction func animationButtonDidTap(_ sender: UIButton) {
        
        setAnimationToLabel()
        
        animationImage.animation = animation.name
        animationImage.curve = animation.curve
        animationImage.force = animation.force
        animationImage.duration = animation.duration
        animationImage.delay = animation.delay
        animationImage.animate()
        
        animation = Animation.getSomeAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        
    }
}
    //MARK: MainViewController extension
    extension MainViewController {
        private func setAnimationToLabel() {
            animationLabel.animation = "fall"
            animationLabel.animate()
            animationLabel.text = animation.description
            animationLabel.animateNext { [unowned self] in
                animationLabel.animation = "slideDown"
                animationLabel.animate()
            }
        }
    }


//
//  ViewController.swift
//  PracticeAnimation
//
//  Created by Pursuit on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bigDuck: UIImageView!
    
    @IBOutlet weak var duck: UIButton!
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
        self.bigDuck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
    }

    @IBAction func sliderUse(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func duckPressed(_ sender: UIButton) {
        if duck.imageView?.image == UIImage.init(named: "duck") {
            UIView.transition(with: duck, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.duck.setImage(UIImage.init(named:"realboy"), for: .normal)
            }) { (done) in
            }
        } else {
            UIView.transition(with: duck, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.duck.setImage(UIImage.init(named: "duck"), for: .normal)
            })
            }
        }
    }



//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bonJoviImage: UIImageView!
    
    @IBOutlet weak var joviHeightConstraint: NSLayoutConstraint!

    var joviHeightProgram: NSLayoutConstraint!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        joviHeightProgram = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
        joviHeightProgram.isActive = false
        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
//        let scaleVariable = self.view.bounds.height / bonJoviImage.bounds.height
        
        self.bonJoviImage.translatesAutoresizingMaskIntoConstraints = false
        
        UIView.animateKeyframes(withDuration: 1.0, delay: 0.0, options: .calculationModeLinear, animations: { 
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.33, animations: {
                
//                self.joviHeightConstraint.isActive = false
//                self.joviHeightConstraint = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.35)
//                self.joviHeightConstraint.isActive = true
                
                self.joviHeightProgram.isActive = false
                self.joviHeightProgram = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.35)
                self.joviHeightProgram.isActive = true
                
                self.view.layoutIfNeeded()

            })
            UIView.addKeyframe(withRelativeStartTime: 0.33, relativeDuration: 0.33, animations: {
                
//                self.joviHeightConstraint.isActive = false
//                self.joviHeightConstraint = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1.1)
//                self.joviHeightConstraint.isActive = true
                
                self.joviHeightProgram.isActive = false
                self.joviHeightProgram = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1.1)
                self.joviHeightProgram.isActive = true
                
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 0.66, relativeDuration: 0.33, animations: {
                
                
//                self.joviHeightConstraint.isActive = false
//                self.joviHeightConstraint = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1.0)
//                self.joviHeightConstraint.isActive = true
                
                self.joviHeightProgram.isActive = false
                self.joviHeightProgram = self.bonJoviImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1.0)
                self.joviHeightProgram.isActive = true
                
                self.view.layoutIfNeeded()
            })
            }) { (finished) in
                print(finished)
        }
        
    }
    



}


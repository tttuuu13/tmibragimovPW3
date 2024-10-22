//
//  ViewController.swift
//  tmibragimovPW1-hard
//
//  Created by тимур on 14.10.2024.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    let distance = CGFloat(20)
    let carAnimationDuration = CGFloat(1)
    let waveAnimationDuration = 0.5
    let waveOffset = CGFloat(3)
    @IBOutlet weak var linesContainer: UIView!
    @IBOutlet var wheels: [UIImageView]!
    @IBOutlet weak var car: UIView!
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        for line in linesContainer.subviews {
            line.layer.cornerRadius = line.bounds.width / 2
        }
        // Non-stop wave animation
        for (index, line) in linesContainer.subviews.enumerated() {
            UIView.animate(withDuration: waveAnimationDuration, delay: 0.1 * Double(index), options: [.autoreverse, .repeat], animations: {
                var frame = line.frame
                frame.origin.y += self.waveOffset
                line.frame = frame
            })
        }
    }
    
    // MARK: - Forward button action
    @IBAction func forwardButtonTapped(_ sender: UIButton) {
        var frame = self.car.frame
        let safeAreaTrailingEdge = self.view.safeAreaLayoutGuide.layoutFrame.maxX
        let newXPosition = frame.origin.x + self.distance
        let maxXPosition = safeAreaTrailingEdge - frame.width
        
        if newXPosition > maxXPosition {
            return
        }
        
        frame.origin.x = newXPosition
        spinWheels(wheels: wheels, rotationAngle: distance / ((wheels.first?.frame.width)! / 2) * .pi)
        UIView.animate(withDuration: carAnimationDuration, animations: {
            self.car.frame = frame
        })
    }
    
    // MARK: - Back button action
    @IBAction func backButtonTapped(_ sender: UIButton) {
        var frame = self.car.frame
        let safeAreaLeadingEdge = self.view.safeAreaLayoutGuide.layoutFrame.minX
        let newXPosition = frame.origin.x - distance
        let minXPosition = safeAreaLeadingEdge
        
        if newXPosition < minXPosition {
            return
        }
        
        frame.origin.x = newXPosition
        spinWheels(wheels: wheels, rotationAngle: (-1) * distance / ((wheels.first?.frame.width)! / 2) * .pi)
        UIView.animate(withDuration: carAnimationDuration, animations: {
            self.car.frame = frame
        })
    }
    
    // MARK: - Spin wheels by specified angle with animation
    func spinWheels(wheels:[UIImageView], rotationAngle:CGFloat) {
        for wheel in wheels {
            let transform = wheel.transform
            let rotation = atan2(transform.b, transform.a)
            UIView.animate(withDuration: carAnimationDuration, animations: {
                wheel.transform = CGAffineTransform(rotationAngle: rotation + rotationAngle)
            })
        }
    }
}


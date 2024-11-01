//
//  ViewController.swift
//  GradientAndShadow
//
//  Created by admin on 01.11.2024.
//

import UIKit

class ViewController: UIViewController {
    let squareView = UIView()
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        squareView.backgroundColor = .clear
        squareView.layer.cornerRadius = 20
        
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.blue.cgColor
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.cornerRadius = 20
        
        
        view.addSubview(squareView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        let squareSize: CGFloat = 100
        let xPosition: CGFloat = 100
        let yPosition: CGFloat = (view.bounds.height - squareSize) / 2
        
        squareView.frame = CGRect(x: xPosition, y: yPosition, width: squareSize, height: squareSize)
        
        squareView.layer.shadowColor = UIColor.black.cgColor
        squareView.layer.shadowOpacity = 0.7
        squareView.layer.shadowOffset = CGSize(width: 3, height: 3)
        squareView.layer.shadowRadius = 7
        
        gradientLayer.frame = squareView.bounds
        squareView.layer.insertSublayer(gradientLayer, at: 0)
    }
}



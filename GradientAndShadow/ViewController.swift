//
//  ViewController.swift
//  GradientAndShadow
//
//  Created by admin on 01.11.2024.
//

import UIKit

class ViewController: UIViewController {
    let squareView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        squareView.backgroundColor = .blue
        view.addSubview(squareView)
        
        squareView.autoresizingMask = []
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let squareSize: CGFloat = 100
        let xPosition: CGFloat = 100
        let yPosition: CGFloat = (view.bounds.height - squareSize) / 2

        squareView.frame = CGRect(x: xPosition, y: yPosition, width: squareSize, height: squareSize)
    }
}



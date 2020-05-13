//
//  ViewController.swift
//  UIBezierPathLearning
//
//  Created by Wei Fan on 2020/5/13.
//  Copyright © 2020 weifan. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let rect = Rect()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rect.backgroundColor = .blue
        view.addSubview(rect)
        rect.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(200)
        }
    }
}


class Rect: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let color = UIColor.red
        color.set()
        let path = UIBezierPath(arcCenter: CGPoint(x: rect.width, y: rect.height/2), radius: rect.width/2,
                                startAngle: .pi/2, endAngle: .pi*3/2, clockwise: true)
        
        path.lineWidth = 2
        path.lineCapStyle = .round
        path.lineJoinStyle = .round

        path.stroke()
    }
}

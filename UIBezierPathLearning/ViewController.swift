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
        let path = UIBezierPath(rect: CGRect(x: rect.origin.x + rect.width / 4, y: rect.origin.y + rect.height / 4,
                                             width: rect.width / 2, height: rect.height / 2))
        path.lineWidth = 2
        path.lineCapStyle = .round
        path.lineJoinStyle = .round

        path.stroke()
    }
}

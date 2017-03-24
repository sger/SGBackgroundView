//
//  ViewController.swift
//  SGBackgroundView
//
//  Created by Spiros Gerokostas on 10/15/2015.
//  Copyright (c) 2015 Spiros Gerokostas. All rights reserved.
//

import UIKit
import SGBackgroundView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let backgroundView = SGBackgroundView(frame: CGRect(x: 0.0, y: 100.0, width: 300, height: 40.0))
        backgroundView.bgColor = UIColor.lightGray
        backgroundView.lineColor = UIColor.darkGray
        backgroundView.xPosLine = 20.0
        self.view.addSubview(backgroundView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Loc Tran on 2/20/17.
//  Copyright © 2017 LocTran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTap))
        
        self.view.addGestureRecognizer(tapGesture)
    }

    func onTap(tapGesture: UITapGestureRecognizer){
        let point = tapGesture.location(in: self.view)
        
        let snowFlake = UIImageView(image: UIImage(named: "snowflake.png"))
        snowFlake.bounds.size = CGSize(width: 40, height: 40)
        snowFlake.center = point
        self.view.addSubview(snowFlake)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


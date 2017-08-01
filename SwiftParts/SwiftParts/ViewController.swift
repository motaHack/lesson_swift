//
//  ViewController.swift
//  SwiftParts
//
//  Created by YS on 2017/07/24.
//  Copyright © 2017年 YS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let titleName: String
    
    override func viewDidLoad() {
        
        self.view.backgroundColor = UIColor.blue
    }
    
    init(titleName: String) {
        
        self.titleName = titleName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  SwiftParts
//
//  Created by YS on 2017/07/24.
//  Copyright © 2017年 YS. All rights reserved.
//
//  http://qiita.com/eKushida/items/92f1fcff65c92e7cc332l
//　ViewController肥大化防止を学ぶため、このページの写経です。

import UIKit

class ViewController: UIViewController {

    var titleName: String
    
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


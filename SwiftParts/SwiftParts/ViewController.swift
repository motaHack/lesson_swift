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
    
    var myTableView = UITableView()
    var dataSource: TableDataSource?
    let tableViewDelegate = TableViewDelegate()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.setup()
        print("viewdidload")
    }
    
    private func setup() {
        
//        myTableView.register(TableViewCell.self, forCellReuseIdentifier: "myCell")
        dataSource = TableDataSource(items: [TableData(title: "りんご"),TableData(title: "ぶどう")],
                                    cellIdentifier: "myCell") { (cell,tableData) in
            if let cell = cell as? TableViewCell, let tableData = tableData as? TableData {
                cell.tableData = tableData
            }
        }
        
        myTableView = UITableView(frame:CGRect(x:0,y:0,width:self.view.bounds.width,height:self.view.bounds.height))
        myTableView.dataSource = dataSource
        myTableView.delegate = tableViewDelegate
        self.view.addSubview(myTableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


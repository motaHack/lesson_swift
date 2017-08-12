//
//  TableDataSource.swift
//  SwiftParts
//
//  Created by YS on 2017/08/01.
//  Copyright © 2017年 YS. All rights reserved.
//  http://qiita.com/eKushida/items/92f1fcff65c92e7cc332l
//　このページの写経です。



import UIKit

typealias TableViewCellConfigureBlock = (_ cell: UITableViewCell, _ item: NSObject) -> Void

class TableDataSource: NSObject {
    
    var items = [NSObject]()
    var cellIdentifier = ""
    var configureCellBlock: TableViewCellConfigureBlock
    
    init(items: [TabelData], cellIdentifier: String, configureCellBlock: @escaping TableViewCellConfigureBlock) {
        self.items = items
        self.cellIdentifier = cellIdentifier
        self.configureCellBlock = configureCellBlock
    }
}

extension TableDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableVeiew: UITableView, _: cellForRowAtIndexPath, indexPath: NSIndexPath) -> UITableViewCell {
    
    }
}

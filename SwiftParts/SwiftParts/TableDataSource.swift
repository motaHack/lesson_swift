//
//  TableDataSource.swift
//  SwiftParts
//
//  Created by YS on 2017/08/01.
//  Copyright © 2017年 YS. All rights reserved.
//

import UIKit

class TableDataSource: NSObject {
    
    var items = [NSObject]()
    
}

extension TableDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

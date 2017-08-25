//
//  TableViewCell.swift
//  SwiftParts
//
//  Created by YS on 2017/08/14.
//  Copyright © 2017年 YS. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    var item: TableData? {
        didSet {
            
            if let item = item {
                self.titleLabel.text = item.title
            }
        }
    }
}

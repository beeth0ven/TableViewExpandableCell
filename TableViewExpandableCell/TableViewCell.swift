//
//  TableViewCell.swift
//  TableViewExpandableCell
//
//  Created by luojie on 15/12/21.
//  Copyright © 2015年 LuoJie. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, TableViewCellExpandableSkill {
    
    @IBAction func toggleExpand(sender: UIButton) {
        showLessContent = !showLessContent
        let title = showLessContent ? "More" : "Less"
        sender.setTitle(title, forState: .Normal)
    }
    
    @IBOutlet weak var expandableViewHeightConstraint: NSLayoutConstraint!
    
}

//
//  TableViewCellExpandableSkill.swift
//  Test
//
//  Created by luojie on 15/12/11.
//  Copyright © 2015年 LuoJie. All rights reserved.
//

import UIKit


/// 提供 TableViewCell 显示更多内容的能力, 可以在这里下载 DEMO： https://github.com/beeth0ven/TableViewExpandableCell/tree/master
protocol TableViewCellExpandableSkill: class {
    /// 可扩展 View 的高度 Constraint
    var expandableViewHeightConstraint: NSLayoutConstraint! { get set }
}

extension TableViewCellExpandableSkill where Self: UITableViewCell {
    
    var showLessContent: Bool {
        get { return expandableViewHeightConstraint.active }
        set { updateSize { self.expandableViewHeightConstraint.active = newValue } }
    }
    
    private func updateSize(updates: (Void -> Void)) {
        updates()
        UIView.animateWithDuration(0.4,
            animations: {
                self.layoutIfNeeded()
            }, completion: {
                _ in
                self.containingTableView?.beginUpdates()
                self.containingTableView?.endUpdates()
        })
    }
    
    private var containingTableView: UITableView? {
        for var superview = self.superview ; superview != nil ; superview = superview!.superview {
            if let tableView = superview as? UITableView {
                return tableView
            }
        }
        return nil
    }
}


extension UITableView {
    func enableSelfSizeCellWithEstimatedRowHeight(height: CGFloat) {
        estimatedRowHeight = height
        rowHeight = UITableViewAutomaticDimension
    }
}

//
//  TableViewController.swift
//  TableViewExpandableCell
//
//  Created by luojie on 15/12/21.
//  Copyright © 2015年 LuoJie. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.enableSelfSizeCellWithEstimatedRowHeight(172)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("Cell")!
    }
    
}

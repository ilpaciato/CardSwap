//
//  CustomTableView.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 13/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class CustomTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    let titleViewCategory = ["Name", "Last Name", "Company", "Job", "Phone", "Address", "Email", "Social", "Website"]
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleViewCategory.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func numberOfRows(inSection section: Int) -> Int {
        return titleViewCategory.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        cellTableViewCell.txtField.placeholder = titleViewCategory[indexPath.item]
        
        return cellTableViewCell
    }
}

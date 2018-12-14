//
//  HomeTableView.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 11/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class HomeTableView: UITableView, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        //
    }
    

    let titleViewCategory = ["", "MWC 2018", "Paris 13/07/2018", "Rome 20/10/2018"]
    
    
    
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    override func numberOfRows(inSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 179
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //tableView(tableView, )
        let row = indexPath.row
        if row == 0{
        //print(row)
            let cellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "BusinessTableViewCell", for: indexPath) as! BusinessTableViewCell
            
            return cellTableViewCell
        }else{
            let cellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as! CategoryTableViewCell

            cellTableViewCell.title.text = titleViewCategory[indexPath.item]
            
            
            return cellTableViewCell
        //return cellTableViewCell
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
}

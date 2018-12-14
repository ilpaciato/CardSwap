
//
//  CustomTableViewCell.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 13/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var txtField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

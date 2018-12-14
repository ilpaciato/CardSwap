//
//  BusinessTableViewCell.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 11/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class BusinessTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var smallCollectionView: SmallCollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

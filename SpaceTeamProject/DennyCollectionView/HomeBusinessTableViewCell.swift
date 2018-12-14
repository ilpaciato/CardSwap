//
//  HomeBusinessTableViewCell.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 10/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class HomeBusinessTableViewCell: UITableViewCell {

    @IBOutlet weak var smallColelctionView: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension HomeBusinessTableViewCell{
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDelegate & UICollectionViewDataSource>
        (_ dataSourceDelegate: D, forRow row: Int)
    {
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        
        collectionView.reloadData()
    }
}

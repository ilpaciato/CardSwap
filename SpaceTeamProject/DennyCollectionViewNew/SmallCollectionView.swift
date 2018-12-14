//
//  SmallCollectionView.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 11/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class SmallCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let imageBigRow: [UIImage] = [
        
        UIImage(named: "template_chiaro_1")!,
        UIImage(named: "template_chiaro_2")!,
        UIImage(named: "template_chiaro_3")!,
        UIImage(named: "template_chiaro_4")!,
        ]
    
    
    let name = ["Claudio Angerano", "Denny Caruso", "Federico Spagocci", "Luca Esposito"]
    let job = ["Designer", "Coder", "Doctor", "Engineer Analyst"]
    let phone = ["345654356", "3337657780", "3225678890", "35567898765"]
    
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        cell.alpha = 0
        UIView.animate(withDuration: 1.5) {
            cell.alpha = 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellCollectionView = collectionView.dequeueReusableCell(withReuseIdentifier: "SmallCollectionViewCell", for: indexPath) as! SmallCollectionViewCell
        
        collectionView.delegate = self
        collectionView.dataSource = self
       /* let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        
        layout.sectionInset = UIEdgeInsets(top: 10, left: 15, bottom: 0, right: 15)
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        
        collectionView.collectionViewLayout = layout*/
        cellCollectionView.lblNome.text = name[indexPath.item]
        cellCollectionView.lblJob.text = job[indexPath.item]
        cellCollectionView.lblPhone.text = phone[indexPath.item]
        cellCollectionView.bigImage.image = imageBigRow[indexPath.item]
        
        return cellCollectionView
    }

}

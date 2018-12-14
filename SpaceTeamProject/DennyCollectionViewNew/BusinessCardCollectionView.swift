//
//  BusinessCardCollectionView.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 11/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class BusinessCardCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate {
    var count: Int = 0
    
    let name = ["Beppe Savastano", "Antonio Barbato", "Mattia De Luca", "Luca Esposito"]
    let job = ["Designer", "Coder", "Doctor", "Engineer Analyst"]
    
    let name2 = ["Luca Santoriello", "Michele Capuozzo", "Ciro De Luca", "Luca Lorix"]
    let name3 = ["Mirko Laiva", "Nino Barbato", "Lilly De Luca", "Mario Esposito"]
    
    let imageFirstRow: [UIImage] = [
        
        UIImage(named: "template_chiaro_1")!,
        UIImage(named: "template_chiaro_2")!,
        UIImage(named: "template_chiaro_3")!,
        UIImage(named: "template_chiaro_4")!,
        ]
    
    let imageSecondRow: [UIImage] = [
        
        UIImage(named: "template_chiaro_2")!,
        UIImage(named: "template_chiaro_3")!,
        UIImage(named: "template_chiaro_4")!,
        UIImage(named: "template_chiaro_1")!,
        ]
    
    let imageThirdRow: [UIImage] = [
        
        UIImage(named: "template_chiaro_4")!,
        UIImage(named: "template_chiaro_3")!,
        UIImage(named: "template_chiaro_2")!,
        UIImage(named: "template_chiaro_1")!,
        ]
    let imageFourthRow: [UIImage] = [
        
        UIImage(named: "template_chiaro_3")!,
        UIImage(named: "template_chiaro_3")!,
        UIImage(named: "template_chiaro_2")!,
        UIImage(named: "template_chiaro_2")!,
        ]
    
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
        
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        
        layout.sectionInset = UIEdgeInsets(top: 10, left: 15, bottom: 0, right: 15)
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        
        collectionView.collectionViewLayout = layout
        
        
        let cellCollectionView = collectionView.dequeueReusableCell(withReuseIdentifier: "BusinessCollectionViewCell", for: indexPath) as! BusinessCollectionViewCell
        //print(indexPath.row)
        if indexPath.item == 0{
            cellCollectionView.lblName.text = name[indexPath.item]
            cellCollectionView.lblJob.text = job[indexPath.item]
            //cellCollectionView.lbl.text = name[indexPath.item]
            cellCollectionView.businessImageCard.image = imageFirstRow[indexPath.item]
        }else if indexPath.item == 1{
            cellCollectionView.lblName.text = name[indexPath.item]
            cellCollectionView.lblJob.text = job[indexPath.item]
            cellCollectionView.businessImageCard.image = imageSecondRow[indexPath.item]
        }else if indexPath.item == 2{
            cellCollectionView.lblName.text = name[indexPath.item]
            cellCollectionView.lblJob.text = job[indexPath.item]
            cellCollectionView.businessImageCard.image = imageThirdRow[indexPath.item]
        }else if indexPath.item == 3{
            cellCollectionView.lblName.text = name[indexPath.item]
            cellCollectionView.lblJob.text = name[indexPath.item]
            cellCollectionView.businessImageCard.image = imageFourthRow[indexPath.item]
        }
        
        count += 1
        
        /*cellCollectionView.layer.cornerRadius = cellCollectionView.frame.size.width / 2*/
        return cellCollectionView
    }
    

  

}

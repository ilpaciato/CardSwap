//
//  HomeViewController.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 09/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionViewBusinessCards: UICollectionView!
    
   // var conto: Int = 0
    
    let businessCardsExample: [UIImage] = [
    UIImage(named: "1")!,
    UIImage(named: "2")!,
    UIImage(named: "3")!,
    UIImage(named: "4")!,
    ]
    
   /* let businessSmallExample: [UIImage] = [
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!,
        UIImage(named: "4")!,
        ]*/

    override func viewDidLoad() {
        super.viewDidLoad()
        //prima cella
        collectionViewBusinessCards.delegate = self
        collectionViewBusinessCards.dataSource = self

        let layout = self.collectionViewBusinessCards.collectionViewLayout as! UICollectionViewFlowLayout
        
        
        layout.sectionInset = UIEdgeInsets(top: 10, left: 15, bottom: 0, right: 15)
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        
        collectionViewBusinessCards!.collectionViewLayout = layout
        
        
        //seconda cella
        /*collectionViewSmall.delegate = self
        collectionViewSmall.dataSource = self
        
        let layoutSmall = self.collectionViewSmall.collectionViewLayout as! UICollectionViewFlowLayout
        
        
        layoutSmall.sectionInset = UIEdgeInsets(top: 10, left: 15, bottom: 0, right: 15)
        layoutSmall.minimumInteritemSpacing = 20
        layoutSmall.minimumLineSpacing = 20
        
        collectionViewSmall!.collectionViewLayout = layoutSmall*/
        
        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //conto += 1
        
        var cellBigRectangle = collectionView.dequeueReusableCell(withReuseIdentifier: "CellBigRectangle", for: indexPath) as! CollectionViewCell
        
        cellBigRectangle.imgBigRectangle.image = businessCardsExample[indexPath.item]
        
       /* if conto > 4{
            let cellSmallRectangle = collectionView.dequeueReusableCell(withReuseIdentifier: "CellSmallRectangle", for: indexPath) as! CollectionViewCell
            
            cellSmallRectangle.imgBigRectangle.image = businessSmallExample[indexPath.item]
            
            //cellBigRectangle=cellSmallRectangle
        }*/
        return cellBigRectangle
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        cell.alpha = 0
        UIView.animate(withDuration: 1.5) {
            cell.alpha = 1
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

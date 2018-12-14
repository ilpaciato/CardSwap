//
//  HomeTableBusinessViewController.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 10/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit
import os.log

class HomeTableBusinessViewController: UITableViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    //@IBOutlet weak var collectionViewInside: UICollectionView!
    

    var count: Int = 0
    var businessCards = [BusinessCardRectangle]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBusinessCardsData()
        
       /* let layout = self.insideCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        
        layout.sectionInset = UIEdgeInsets(top: 10, left: 15, bottom: 0, right: 15)
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        
        insideCollectionView!.collectionViewLayout = layout*/
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    private func loadBusinessCardsData(){
        
        /*let photo1 = UIImage(named: "meal1")
        let photo2 = UIImage(named: "meal2")
        let photo3 = UIImage(named: "meal3")*/
        
        /*guard let meal1 = BusinessCardRectangle(title: "Biglietto 1", image: photo1) else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let meal2 = BusinessCard(title: "Biglietto 2", image: photo2) else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let meal3 = BusinessCard(title: "Biglietto 3", image: photo3) else {
            fatalError("Unable to instantiate meal3")
        }*/
        
        let view = UIView()
       /* guard let collectionView = BusinessCardRectangle(collectionView: UICollectionView) else { fatalError("Unable to instantiate collectionView")}
        
        businessCards += [collectionView]*/
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure the cell...
        let cellIdentifier = "HomeTableCell"
        let smallCellID = "SmallHomeTableViewCell"
        
        let row = indexPath.row
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HomeBusinessTableViewCell
       /* if row == 0{
            
            
                
            return cell!
            }else{
                 var smallCell = tableView.dequeueReusableCell(withIdentifier: smallCellID, for: indexPath) as? HomeBusinessTableViewCell
                    
                    return smallCell!
            }*/
        return cell!
        }
        
        // Fetches the appropriate meal for the data source layout.
        //let businessCard = businessCards[indexPath.row]
        
        /*cell.lblTitle.text = businessCard.title
        cell.imgTable.image = businessCard.image*/
        //cell.collectionView.traitCollection =
        
        //return cell

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 179
    }
    
    
    
    
    //collection view delegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        count += 1
        if indexPath.section == 1 {
           // cellCollectionView.frame.width = CGFloat(50)
        }
            let cellCLIdentifier = "InsideTableCollectionViewCell"
            
            let cellCollectionView = collectionView.dequeueReusableCell(withReuseIdentifier: cellCLIdentifier, for: indexPath) as! InsideTableCollectionViewCell
            return cellCollectionView
       
           /* let smallCellCLIdentifier = "SmallInsideTableCollectionViewCell"
            
            
            let smallCellCollectionView = collectionView.dequeueReusableCell(withReuseIdentifier: smallCellCLIdentifier, for: indexPath) as! InsideTableCollectionViewCell
            
            return smallCellCollectionView*/
    }
    
    /*flowLayout.minimumInteritemSpacing = 10
    flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    let minimumSize: CGFloat = 90.0 // A cell's width or height won't ever be smaller than this*/
    
    /*func cellWidthForViewWidth(viewWidth: CGFloat) -> CGFloat {
        // Determine the largest number of cells that could possibly fit in a row, based on the cell's minimum size
        var numberOfCellsPerRow = Int(viewWidth / 90)
        
        // Adjust for interitem spacing and section insets
        let availableWidth = viewWidth - 10 - 10 - 10 * CGFloat(numberOfCellsPerRow - 1)
        numberOfCellsPerRow = Int(availableWidth / 90)
        
        return availableWidth / CGFloat(numberOfCellsPerRow) // Make this an integral width if desired
    }*/
}


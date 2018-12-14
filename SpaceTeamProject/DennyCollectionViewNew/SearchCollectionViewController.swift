//
//  CollectionViewController.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 13/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class SearchCollectionViewController: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    func updateSearchResults(for searchController: UISearchController) {
        searchBar.isSecureTextEntry = false
        //
       // UISearchController(searchController.searchBar.endEditing(true))
        //UISearchController(searchController.searchBar)
    }

    
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
        
        searchBar.delegate = self
        //searchBar.returnKeyType = UIReturnKeyType.done
    }

    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        //or
        //self.view.endEditing(true)
        return true
    }

    
    let lblName = ["Claudio Angerano", "Denny Caruso", "Federico Spagocci", ""]
    let lblCompany = ["BioDesign s.r.l.", "Code4Business", "VeterSPA", ""]
    let lblJob = ["Designer", "Designer", "Designer", ""]
    let lblTelephone = ["3456743456", "567564535", "455665453", ""]
    let lblAddress = ["Girasoli Street, 34", "Main Strett, 11", "Pizza Strett, 90", ""]
    let lblWebsite = ["wwww.claudioangerano.it", "www.dennewbie.uk", "www.spagofede.com", ""]
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //
        let cellSearch = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionViewCell", for: indexPath) as! SearchCollectionViewCell
        collectionView.delegate = self
        collectionView.dataSource = self
        print(indexPath.row)
        /*cellLifestory.titleLifeStory.text = titleLifeStory[indexPath.item]
        cellLifestory.textLifeStory.text = textLifeStory[indexPath.item]
        cellLifestory.imageLifeStory.image = imageLifeStory[indexPath.item]*/
        print("here i am")
        cellSearch.lblName.text = lblName[indexPath.item]
        cellSearch.lblCompany.text = lblCompany[indexPath.item]
        cellSearch.lblJob.text = lblJob[indexPath.item]
        cellSearch.lblTelephone.text = lblTelephone[indexPath.item]
        cellSearch.lblAddress.text = lblAddress[indexPath.item]
        cellSearch.lblWebSite.text = lblWebsite[indexPath.item]
        
        
        return cellSearch
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

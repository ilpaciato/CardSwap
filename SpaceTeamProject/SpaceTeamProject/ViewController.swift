//
//  ViewController.swift
//  SpaceTeamProject
//
//  Created by federico SPAGOCCI on 27/11/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        Do any additional setup after loading the view, typically from a nib.
//        var core = FedeCoreUtility(entity: "Person")
//       core.newRecord(value: "Denny", forkey: "name")
        
        var core = FedeCoreUtility(entity: "Person")
       
      var result =  core.isPresent (entityName: "Person", format: "name", query: "Denny")
        print (result)
    }
}


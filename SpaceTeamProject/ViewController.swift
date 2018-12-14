//
//  ViewController.swift
//  SpaceTeamProject
//
//  Created by federico SPAGOCCI on 27/11/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//


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




/*
import UIKit
import CoreData
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view, typically from a nib.
//    var core = CoreUtility(entity: "Person")
//       core.newRecord(value: "Denny", forkey: "name")

      var core = FedeCoreUtility(entity: "Person")
       
        core.searchRecord(entityName: "Person", format: "name", query: "Denny")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        //request.predicate = NSPredicate(format: "age = %@", "12")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            
            for data in result as! [NSManagedObject]  {
                
                print(data.value(forKey: "name") as! String)
            }
            
        } catch {
            
            print("Failed")
        }
    }


}
*/

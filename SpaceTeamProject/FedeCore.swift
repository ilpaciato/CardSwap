//
//  FedeCore.swift
//  SpaceTeamProject
//
//  Created by federico SPAGOCCI on 27/11/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import Foundation
import CoreData
import UIKit
class FedeCoreUtility {
    
    let appDelegate:AppDelegate
    let context:NSManagedObjectContext
    var entity:NSEntityDescription
    
    init(entity:String){
        
        self.appDelegate  = UIApplication.shared.delegate as! AppDelegate
        self.context = appDelegate.persistentContainer.viewContext
        self.entity = try! NSEntityDescription.entity(forEntityName: entity, in: context)!
        
    }
    
    
    
    func newRecord(value:String,forkey:String){
        var newUser = NSManagedObject(entity: self.entity, insertInto: context)
        newUser.setValue(value, forKey: forkey)
        
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
        
        
    }
    
    func searchRecord(entityName:String,format:String,query:String){
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        request.predicate = NSPredicate(format: "\(format) = %@", "\(query)")
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
    
    func  getAllRecords(entityName:String,forkey:String) {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        //        request.predicate = NSPredicate(format: "\(format) = %@", "\(query)")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            
            for data in result as! [NSManagedObject]  {
                
                print(data.value(forKey: forkey) as! String)
            }
            
        } catch {
            
            print("Failed")
        }
        //
        
        
    }
    
}

// estendo per non inquinarmi la classe con la personalizzazione
extension FedeCoreUtility {
    
    func newSpacePersonRecord(NewSpacePerson:SpacePerson){
        let newUser = NSManagedObject(entity: self.entity, insertInto: context)
        
        newUser.setValue(NewSpacePerson.personID, forKey: "personid")
        newUser.setValue(NewSpacePerson.name, forKey: "name")
        newUser.setValue(NewSpacePerson.surName, forKey: "surname")
        
        //        continua claudio
        newUser.setValue(NewSpacePerson.secondSurname, forKey: "secondSurname")
        newUser.setValue(NewSpacePerson.title, forKey: "title")
        newUser.setValue(NewSpacePerson.profession, forKey: "profession")
        newUser.setValue(NewSpacePerson.workStreet, forKey: "workStreet")
        newUser.setValue(NewSpacePerson.workCity, forKey: "workCity")
        newUser.setValue(NewSpacePerson.workPostalCode, forKey: "workPostalCode")
        newUser.setValue(NewSpacePerson.workNation, forKey: "workNation")
        newUser.setValue(NewSpacePerson.workPhone, forKey: "workPhone")
        newUser.setValue(NewSpacePerson.workMobile, forKey: "workMobile")
        newUser.setValue(NewSpacePerson.facebook, forKey: "facebook")
        newUser.setValue(NewSpacePerson.linkedin, forKey: "linkedin")
        newUser.setValue(NewSpacePerson.telegram, forKey: "telegram")
        newUser.setValue(NewSpacePerson.website, forKey: "website")
        
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
        
        
    }
    
    func isPresent (entityName:String,format:String,query:String)-> Bool{
        var resultBool = false
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        request.predicate = NSPredicate(format: "\(format) = %@", "\(query)")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            if result.count > 0 {
                resultBool = true
            }else {
                resultBool = false
            }
            
        } catch {
            
            print("Failed")
            
            
        }
        return resultBool
    }
    
    func ricevoBiglietto(Biglietto:SpacePerson) {
        var id:String = Biglietto.personID
        var exist: Bool = isPresent(entityName: "Person", format: "name", query: id)
        if exist == false {
            
            newSpacePersonRecord(NewSpacePerson: Biglietto)
            
        }
        
    }
    
}










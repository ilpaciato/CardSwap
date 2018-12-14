//
//  FedeStructs.swift
//  SpaceTeamProject
//
//  Created by fede on 05/12/18.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import Foundation

struct SpacePerson:PersonId,Work,WorkAddress,WorkTelephoneNumbers,SocialNetwork,Website,Encodable,Decodable {
   
    var personID: String
    
    var name: String
    
    var surName: String
    
    var secondSurname: String
    
    func getFullName() -> String {
      return "s"
    }
    
    var title: String
    
    var profession: String
    
    var workStreet: String
    
    var workCity: String
    
    var workPostalCode: String
    
    var workNation: String
    
    var workPhone: String
    
    var workMobile: String
    
    var facebook: String
    
    var linkedin: String
    
    var telegram: String
    
    var website: String
    
    init(name:String, surName:String, secondSurname:String, title:String, profession:String, workStreet:String, workCity:String, workPostalCode:String, workNation:String, workPhone:String, workMobile:String, facebook:String, linkedin:String, telegram:String, website:String, personID:String) {
        
        self.name = name
        self.surName = surName
        self.secondSurname = secondSurname
        self.title = title
        self.profession = profession
        self.workStreet = workStreet
        self.workCity = workCity
        self.workPostalCode = workPostalCode
        self.workNation = workNation
        self.workPhone = workPhone
        self.workMobile = workMobile
        self.facebook = facebook
        self.linkedin = linkedin
        self.telegram = telegram
        self.website = website
        self.personID = personID
    }

}





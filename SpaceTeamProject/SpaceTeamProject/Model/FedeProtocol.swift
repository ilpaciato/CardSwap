//
//  FedeProtocol.swift
//  SpaceTeamProject
//
//  Created by federico SPAGOCCI on 04/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import Foundation
protocol IsFlagable {
    var isFlaged:Bool {get set}
}
protocol PersonId {
    var personID:String {get set}
    var name:String {get set}
    var surName:String {get set}
    var secondSurname:String {get set}
    
    func getFullName() ->String
}

protocol Work {
    var title:String {get set}
    var  profession: String {get set}
    
}

protocol WorkAddress {
    var workStreet:String {get set}
    var workCity:String {get set}
    var workPostalCode:String {get set}
    var workNation:String {get set}
}

protocol WorkTelephoneNumbers {
    
    var workPhone:String {get set}
    var workMobile:String {get set}
    
}
protocol WorkEmail {
    
    var workEmail:String {get set}
    var otherEmail:String {get set}
    
}
protocol SocialNetwork {
   var facebook:String {get set}
    var linkedin:String {get set}
    var telegram:String {get set}
}
protocol Website{
    var website:String {get set}
}

protocol Category {
    var category:String {get set}
    var idCategory:Int {get set}
}

protocol Tag {
    var tag:[String:String]{ get set}
}






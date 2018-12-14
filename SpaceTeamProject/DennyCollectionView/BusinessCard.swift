//
//  BusinessCard.swift
//  SpaceTeamProject
//
//  Created by Denny Caruso on 10/12/2018.
//  Copyright © 2018 Spaceteam. All rights reserved.
//

import UIKit

class BusinessCard {
    
    var title: String
    var image: UIImage?
    
    init?(title: String, image: UIImage?){
        self.title = title
        self.image = image
    }
}

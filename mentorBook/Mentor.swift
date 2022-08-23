//
//  Mentor.swift
//  mentorBook
//
//  Created by Maoko Furuya on 2022/08/23.
//

import UIKit

class Mentor {
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, imageName:String, course:String){
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}

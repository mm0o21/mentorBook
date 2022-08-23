//
//  ViewController.swift
//  mentorBook
//
//  Created by Maoko Furuya on 2022/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray:[Mentor] = []
    
    @IBOutlet var courseLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var index: Int = 0
    
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course:"iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course:"Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course:"WebD WebS"))
        
        setUI()
    }

    
    @IBAction func mae(){
        index = index - 1
        setUI()
        
    }
    
    @IBAction func tugi(){
        index = index + 1
        setUI()
    }

}


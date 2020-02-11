//
//  AboutMeViewController.swift
//  MyResume
//
//  Created by Andry Pro on 10.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    // MARK: - Private Properties
    private let user = User()
    
    // MARK: - IB Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setName()
        setSurname()
        setAge()
        setAboutMe()
    }
    
    // MARK: - Private Methods
    private func setName() {
        if let name = user.name {
            nameLabel.text = name
        } else {
            nameLabel.text = "Some name"
        }
    }
    
    private func setSurname() {
        if let surname = user.surname {
            surnameLabel.text = surname
        } else {
            surnameLabel.text = "Some surname"
        }
    }
    
    private func setAge() {
        if let age = user.age {
            ageLabel.text = String(age)
        }
    }
    
    private func setAboutMe() {
        if let aboutMe = user.aboutMe {
            aboutMeLabel.text = aboutMe
        } else {
            aboutMeLabel.text = "Some text"
        }
    }
}

//
//  FullAboutMeViewController.swift
//  MyResume
//
//  Created by Andry Pro on 10.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class FullAboutMeViewController: UIViewController {

    // MARK: - Private Properties
    private let user = User()
    
    // MARK: - IB Outlets
    @IBOutlet weak var aboutMeTextView: UITextView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setAboutMe()
    }
    
    // MARK: - Private Methods
     private func setAboutMe() {
        if let aboutMe = user.fullAbouMe {
            aboutMeTextView.text = aboutMe
        } else {
            aboutMeTextView.text = "Much more text"
        }
    }
}

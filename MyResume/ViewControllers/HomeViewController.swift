//
//  HomeViewController.swift
//  MyResume
//
//  Created by Andry Pro on 10.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Private Properties
    private let user = User()
    
    // MARK: - IB Outlets
    @IBOutlet weak var mainLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Welcome, \(user.login)"
    }
}

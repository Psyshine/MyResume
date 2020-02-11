//
//  SegueTestViewController.swift
//  MyResume
//
//  Created by Andry Pro on 11.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class SegueTestViewController: UIViewController {

    // MARK: - Public Properties
    
    var sequeName = ""
    
    // MARK: - IB Outlets
    
    @IBOutlet weak var mainLabel: UILabel!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = sequeName
    }
}

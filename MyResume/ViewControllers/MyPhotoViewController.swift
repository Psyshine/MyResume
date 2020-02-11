//
//  MyPhotoViewController.swift
//  MyResume
//
//  Created by Andry Pro on 11.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class MyPhotoViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let seguetestViewCintroller = segue.destination as? SegueTestViewController {
            switch segue.identifier {
            case "showSegue":
                seguetestViewCintroller.sequeName = segue.identifier!
                case "showDetailSegue":
                seguetestViewCintroller.sequeName = segue.identifier!
                case "presentModallySegue":
                seguetestViewCintroller.sequeName = segue.identifier!
                case "presentAsPopover":
                seguetestViewCintroller.sequeName = segue.identifier!
            default:
                print("Specified purpose is not achievable")
            }
        }
        
    }

}

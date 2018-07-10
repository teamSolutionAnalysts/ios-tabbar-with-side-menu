//
//  NonMenuViewController.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 20/04/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit

class NonMenuViewController: UIViewController {

    //MARK:- UIViewController Initialize Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- IBAction Methods
    @IBAction func btnNavigateToMainTapped(_ sender: UIButton) {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.makeRootViewController()
        }
    }
}

//
//  SideBaseViewController.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 22/06/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit

class SideBaseViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Set Left And Right Naviation Bar Items With Image
        setNavigationBarItem()
    }
}

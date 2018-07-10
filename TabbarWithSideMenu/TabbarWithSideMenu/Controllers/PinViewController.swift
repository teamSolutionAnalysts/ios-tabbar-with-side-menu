//
//  PinViewController.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 22/06/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit

class PinViewController: SideBaseViewController {

    //MARK:- UIViewController Initialize Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = LeftMenuItems.pinTab.rawValue
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

//
//  UserViewController.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 22/06/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit

class UserViewController: SideBaseViewController {

    //MARK:- UIViewController Initialize Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "User Tab"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Get CustomTabBarViewController(which subclass of RAMAnimatedTabBarController) and call hide tabbar item method of RAMAnimatedTabBarController to hide tabitems
        (self.navigationController?.parent as? CustomTabBarViewController)?.animationTabBarHidden(false)
    }
}

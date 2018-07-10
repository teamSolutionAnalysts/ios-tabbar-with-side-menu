//
//  SettingsViewController.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 17/05/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit

class SettingsViewController: SideBaseViewController {

    //MARK:- UIViewController Initialize Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = LeftMenuItems.settingsTab.rawValue
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //MARK:- IBAction Methods
    @IBAction func btnPushViewControllerTapped(_ sender: UIButton) {
        //Push SecondViewController by Segue
    }
}

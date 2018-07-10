//
//  SecondViewController.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 20/04/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    //MARK:- UIViewController Initialize Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    func setupViewController() {
        //Hide back button when SecondViewController is not present
        btnBack.isHidden = !isModal()
        
        //Get CustomTabBarViewController(which subclass of RAMAnimatedTabBarController) and call hide tabbar item method of RAMAnimatedTabBarController to hide tabitems
        (self.navigationController?.parent as? CustomTabBarViewController)?.animationTabBarHidden(true)
    }
    
    //MARK:- IBAction Methods
    @IBAction func btnBackTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}

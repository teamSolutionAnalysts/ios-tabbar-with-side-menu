//
//  MainViewController.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 20/04/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class MainViewController: SideBaseViewController {

    //MARK:- UIViewController Initialize Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = LeftMenuItems.mainView.rawValue
    }

    //MARK:- IBAction Methods
    @IBAction func btnPresentTapped(_ sender: UIButton) {
        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: ViewControllerID.secondViewController) as? SecondViewController else {
            return
        }
        self.present(secondViewController, animated: true)
    }
    
    @IBAction func btnPushTapped(_ sender: UIButton) {
        guard let nonMenuViewController = self.storyboard?.instantiateViewController(withIdentifier: ViewControllerID.nonMenuViewController) as? NonMenuViewController else {
            return
        }
        self.navigationController?.pushViewController(nonMenuViewController, animated: true)
    }
}

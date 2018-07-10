//
//  LeftMenuViewController.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 20/04/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController

class LeftMenuViewController: UIViewController {

    //MARK:- IBOutlet And Variable Declaration
    var leftMenu = ["Tab View", "Main View", "Non Menu View", "Settings Tab", "Pin Tab"]
    @IBOutlet weak var tableLeftMenu: UITableView!
    
    //MARK:- UIViewController Initialize Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableLeftMenu.tableFooterView = UIView()
    }
    
    //MARK:- Other Methods
    func changeMainViewController(to viewController: UIViewController) {
        //Change main viewcontroller of side menu view controller
        let navigationViewController = UINavigationController(rootViewController: viewController)
        slideMenuController()?.changeMainViewController(navigationViewController, close: true)
    }
}

//MARK:- UITableViewDataSource Methods
extension LeftMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leftMenu.count
    }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let tableViewCell = UITableViewCell()
        tableViewCell.textLabel?.text = leftMenu[indexPath.row]
        tableViewCell.selectionStyle = .none
        tableViewCell.backgroundColor = UIColor(red: 224/255, green: 230/255, blue: 230/255, alpha: 1.0)
        return tableViewCell
    }
}

//MARK:- UITableViewDelegate Methods
extension LeftMenuViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let leftHeaderView = loadFromNibNamed(ViewID.leftHeaderView) as? LeftHeaderView else {
            print("Left Header view not found")
            return nil
        }
        return leftHeaderView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let leftMenuItem = LeftMenuItems(rawValue: leftMenu[indexPath.row]) else {
            print("Left Menu Item not found")
            return
        }
        
        switch leftMenuItem {
            
            case .tabView:
                guard let tabViewController = storyboard?.instantiateViewController(withIdentifier: ViewControllerID.customTabbarViewController) as? CustomTabBarViewController else {
                    return
                }
                changeMainViewController(to: tabViewController)
            
            case .mainView:
                guard let mainViewController = storyboard?.instantiateViewController(withIdentifier: ViewControllerID.mainViewController) as? MainViewController else {
                    return
                }
                changeMainViewController(to: mainViewController)
            
            case .nonMenu:
                guard let nonMenuController = storyboard?.instantiateViewController(withIdentifier: ViewControllerID.nonMenuViewController) as? NonMenuViewController else {
                    return
                }
                changeMainViewController(to: nonMenuController)
            
            case .settingsTab, .pinTab:
               
                let toIndex = (leftMenuItem == .settingsTab) ? TabItem.settings.rawValue : TabItem.pin.rawValue
                
                //Check here Custom TabBar ViewController is already exist then we just set index other wise we instantiate view controller and set index
                if let customTabBar = ((slideMenuController()?.mainViewController as? UINavigationController)?.viewControllers.first as? CustomTabBarViewController) {
                    
                    let currentIndex = customTabBar.selectedIndex
                    customTabBar.setSelectIndex(from: currentIndex, to: toIndex) //Side Menu View Controller's method
                    changeMainViewController(to: customTabBar)
                    
                } else {
                    guard let customTabBar = storyboard?.instantiateViewController(withIdentifier: ViewControllerID.customTabbarViewController) as? CustomTabBarViewController else {
                            return
                    }
                    customTabBar.setSelectIndex(from: 0, to: toIndex)
                    changeMainViewController(to: customTabBar)
                }
        }
    }
}

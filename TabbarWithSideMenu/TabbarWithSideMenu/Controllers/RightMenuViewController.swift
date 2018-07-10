//
//  RightMenuViewController.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 20/04/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit

class RightMenuViewController: UIViewController {

    //MARK:- IBOutlet And Variable Declaration
    @IBOutlet weak var tableRightMenu: UITableView!
    
    //MARK:- UIViewController Initialize Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableRightMenu.tableFooterView = UIView()
    }
}

//MARK:- UITableViewDataSource Methods
extension RightMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableViewCell = UITableViewCell()
        tableViewCell.textLabel?.text = "Menu Item \(indexPath.row + 1)"
        tableViewCell.selectionStyle = .none
        tableViewCell.backgroundColor = UIColor(red: 224/255, green: 230/255, blue: 230/255, alpha: 1.0)
        return tableViewCell
    }
}

//MARK:- UITableViewDelegate Methods
extension RightMenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select Index Path:",indexPath.row)
    }
}

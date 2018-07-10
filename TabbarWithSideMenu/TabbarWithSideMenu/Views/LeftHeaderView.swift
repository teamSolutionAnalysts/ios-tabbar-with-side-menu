//
//  LeftHeaderView.swift
//  TabbarWithSideMenu
//
//  Created by Sunil Prajapati on 20/04/18.
//  Copyright © 2018 sunil.prajapati. All rights reserved.
//

import UIKit

class LeftHeaderView: UIView {

    //MARK:- IBOutlet And Variable Declaration
    @IBOutlet weak var IBimgViewHeader: UIImageView!
    
    //MARK:- UIView Initialize Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        initializeView()
    }
    
    func initializeView() {
        backgroundColor = UIColor(red: 4/255, green: 133/255, blue: 103/255, alpha: 1.0)
        IBimgViewHeader.image = UIImage(named: "left_header")
        IBimgViewHeader.layer.cornerRadius = IBimgViewHeader.frame.height / 2
        IBimgViewHeader.clipsToBounds = true
        IBimgViewHeader.layer.borderWidth = 2
        IBimgViewHeader.layer.borderColor = UIColor.yellow.cgColor
    }
}

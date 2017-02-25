//
//  MyNewsCell.swift
//  NewsCheck
//
//  Created by taga soichiro on 2017/02/25.
//  Copyright © 2017年 taga soichiro. All rights reserved.
//

import UIKit

class MyNewsCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func setCell(myNewsData: MyNewsData){
        nameLabel.text = myNewsData.name
    }
}

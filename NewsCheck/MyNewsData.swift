//
//  News.swift
//  NewsCheck
//
//  Created by taga soichiro on 2017/02/25.
//  Copyright © 2017年 taga soichiro. All rights reserved.
//

import Foundation

class MyNewsData: NSObject {
    
    var name: String
    var url: String
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}

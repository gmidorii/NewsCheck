//
//  Config.swift
//  NewsCheck
//
//  Created by taga soichiro on 2017/02/26.
//  Copyright © 2017年 taga soichiro. All rights reserved.
//

import Foundation

class Config: NSObject {
    #if DEBUG
    static let URL_API : String = "http://0.0.0.0:8080/news"
    #else
    static let URL_API : String = "http://35.187.198.137/news"
    #endif
}

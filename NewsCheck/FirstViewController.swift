//
//  FirstViewController.swift
//  NewsCheck
//
//  Created by taga soichiro on 2017/02/25.
//  Copyright © 2017年 taga soichiro. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myNewsDatas = [MyNewsData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.contentInset = UIEdgeInsetsMake(40, 0, 0, 0);
        fetchNews()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myNewsDatas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyNewsCell = tableView.dequeueReusableCell(withIdentifier: "MyNewsCell")! as! MyNewsCell
        cell.setCell(myNewsData: myNewsDatas[indexPath.row])
        return cell
    }
    
    func fetchNews() {
        Alamofire
            .request("http://0.0.0.0:8080/news?lang=Go")
            .responseJSON { response in
                guard let object = response.result.value else {
                    return
                }
                
                let json = JSON(object)
                json["items"].forEach {(_, json) in
                    self.myNewsDatas.append(MyNewsData(name: json["title"].string!))
                    print(json["title"].string!)
                }
                self.tableView.reloadData()
        }
    }
}


//
//  MyWebViewController.swift
//  NewsCheck
//
//  Created by taga soichiro on 2017/03/01.
//  Copyright © 2017年 taga soichiro. All rights reserved.
//

import UIKit

class MyWebViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    var selectedUrl: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(selectedUrl)
        let url = NSURL(string: selectedUrl)!
        let request: NSURLRequest = NSURLRequest(url: url as URL)
        myWebView.loadRequest(request as URLRequest)
        //self.setupSwipeGestures()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

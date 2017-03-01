//
//  WebViewController.swift
//  
//
//  Created by taga soichiro on 2017/02/27.
//
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate{

    @IBOutlet var myWebView: UIWebView!
    var selectedUrl: String!
    
    @IBOutlet weak var myBack: UIBarButtonItem!
    @IBOutlet weak var myToolbar: UIToolbar!
        
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        print("test")
        self.myWebView.goBack()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myWebView.delegate = self
        let url = NSURL(string: selectedUrl)!
        let request: NSURLRequest = NSURLRequest(url: url as URL)
        myWebView.loadRequest(request as URLRequest)
        self.setupSwipeGestures()
        self.myBack.isEnabled = self.myWebView.canGoBack
        self.myWebView.bringSubview(toFront: myToolbar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupSwipeGestures() {
        let gestureToRight = UISwipeGestureRecognizer(target: self.myWebView, action: #selector(UIWebView.goBack))
        gestureToRight.direction = UISwipeGestureRecognizerDirection.right
        self.myWebView.addGestureRecognizer(gestureToRight)
        
        let gestureToLeft = UISwipeGestureRecognizer(target: self.myWebView, action: #selector(UIWebView.goForward))
        gestureToLeft.direction = UISwipeGestureRecognizerDirection.left
        self.myWebView.addGestureRecognizer(gestureToLeft)
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

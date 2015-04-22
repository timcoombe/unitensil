//
//  ViewController.swift
//  Unitensil
//
//  Created by Coombe, Tim on 22/04/2015.
//  Copyright (c) 2015 Coombe, Tim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "http://unitensilapp.com/android/app3/");
        let requestObj = NSURLRequest(URL: url!);
        myWebView.scalesPageToFit = true
        myWebView.loadRequest(requestObj);
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


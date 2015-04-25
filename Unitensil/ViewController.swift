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
        let url = NSURL (string: "http://unitensilapp.com/ios/app/");
        let requestObj = NSURLRequest(URL: url!);
        myWebView.scalesPageToFit = true
        myWebView.loadRequest(requestObj);
        
        
        
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)

        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                myWebView.goBack()
                println("Swiped right")
            case UISwipeGestureRecognizerDirection.Left:
                 myWebView.goForward()
                
                
                println("Swiped left")
            default:
                break
            }
        }
    }

}


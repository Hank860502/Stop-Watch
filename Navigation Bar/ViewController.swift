//
//  ViewController.swift
//  Navigation Bar
//
//  Created by hank8652 on 7/13/16.
//  Copyright © 2016 hank8652. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    var timer = NSTimer()
    
    func play(){
        
        time++
        
        timeDisplay.text = String(time)
    }
    
    func pause(){
        
        timeDisplay.text = String(time)
    }
    @IBOutlet var timeDisplay: UITextView!
    @IBAction func start(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("play"), userInfo : nil, repeats: true)
    }
    @IBAction func stop(sender: AnyObject) {
        
         timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timeDisplay.text = "0"
    }
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


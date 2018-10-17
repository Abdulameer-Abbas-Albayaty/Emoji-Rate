//
//  ViewController.swift
//  EmojiRating
//
//  Created by Admin on 10/16/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,RateDelegate {
    
    var rate:EmojiRateView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rate = self.addRateView()
        // show the view of rating
        rate.showView()
    }

    @IBAction func TapRateButton(_ sender: Any) {
        rate.showView()
    }
    
    func Rate(value: Int) {
        // here write your code
        print(value)
    }
    
}


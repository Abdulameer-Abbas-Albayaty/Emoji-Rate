//
//  ViewController.swift
//  EmojiRating
//
//  Created by Admin on 10/16/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,RateDelegate {
    
    var emRate:EmojiRateView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emRate = self.addRateView()
        // show the view of rating
        emRate.showView()
    }

    @IBAction func TapRateButton(_ sender: Any) {
        emRate.showView()
    }
    
    func Rate(value: Int) {
        // here write your code
        print(value)
    }
    
}


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
    }

    @IBAction func TapRateButton(_ sender: Any) {
        rate.showView()
    }
    
    func Rate(value: Int) {
        // here your code
        print(value)
    }
    
}

extension UIViewController {
    
    func addRateView() -> EmojiRateView {
        let rate = Bundle.main.loadNibNamed("EmojiRate", owner: nil, options: nil)?.first as! EmojiRateView
        self.view.addSubview(rate)
        rate.frame = view.frame
        rate.Delegate = self as? RateDelegate
        return rate
    }
    
}


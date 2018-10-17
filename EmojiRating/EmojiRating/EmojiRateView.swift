//
//  EmojiRateView.swift
//  EmojiRating
//
//  Created by Admin on 10/16/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

protocol RateDelegate {
    func Rate(value:Int)
}

class EmojiRateView: UIView {

    private var inActiveEmojies = [#imageLiteral(resourceName: "EterribleNotActive"),#imageLiteral(resourceName: "EbadNotActive"),#imageLiteral(resourceName: "EokNotActive"),#imageLiteral(resourceName: "EgoodNotActive"),#imageLiteral(resourceName: "EgreatNotActive")]
    private var ActiveEmojies = [#imageLiteral(resourceName: "EterribletActive"),#imageLiteral(resourceName: "EbadActive"),#imageLiteral(resourceName: "EokActive"),#imageLiteral(resourceName: "EgoodActive"),#imageLiteral(resourceName: "EgreatActive")]
    
    @IBOutlet var BoxView: UIView!
    
    @IBOutlet var emojiButtons: [UIButton]!
    @IBOutlet var emojeLables: [UILabel]!
    @IBOutlet var rateButton: UIButton!
    
    var Delegate:RateDelegate? = nil
    private var value:Int!

    override func awakeFromNib() {
        super.awakeFromNib()
        value = 0
        chooseEmojiAt(index: 0)
        self.isHidden = true
        rateButton.addTarget(self, action: #selector(tapRateButton), for: .touchUpInside)
    }
    
    func showView() {
        self.BoxView.layer.opacity = 0
        UIView.animate(withDuration: 0.4) {
            self.isHidden = false
            self.BoxView.layer.opacity = 1
        }
    }
    
    @objc func tapRateButton() {
        Delegate?.Rate(value: value)
        self.isHidden = true
    }
    
    func chooseEmojiAt(index:Int){
        value = index + 1
        for i in 0...emojiButtons.count - 1 {
            if i != index  {
                emojiButtons[i].setImage(inActiveEmojies[i], for: .normal)
                emojeLables[i].textColor = #colorLiteral(red: 0.6470588235, green: 0.6470588235, blue: 0.6470588235, alpha: 1)
            }
        }
        self.emojiButtons[index].setImage(ActiveEmojies[index], for: .normal)
        self.emojeLables[index].textColor = #colorLiteral(red: 0.4274509804, green: 0.2980392157, blue: 0.2549019608, alpha: 1)
    }

    @IBAction func rateTapped(_ sender: UIButton) {
        chooseEmojiAt(index: sender.tag)
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        self.isHidden = true
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

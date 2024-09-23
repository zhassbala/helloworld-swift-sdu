//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by FIskalinov on 20.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var bottomLabel: UILabel!
    var isShown: Bool = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomLabel.alpha = 0
    }

    @IBAction func showTextButtonTapped(_ sender: Any) {
        isShown.toggle()
        print("animating show btn, isShown is \(isShown)")
        UIView.animate(withDuration: 0.150){
            self.bottomLabel.alpha = self.isShown ? 1 : 0
        }
    }
}


//
//  ViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


    @IBAction func toTop(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    @IBAction func toSentaku(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }

}


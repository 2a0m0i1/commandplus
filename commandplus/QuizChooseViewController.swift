//
//  QuizChooseViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/05/26.
//

import UIKit

class QuizChooseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func toTop(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
}

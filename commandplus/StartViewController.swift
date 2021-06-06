//
//  StartViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/06.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toSentaku(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }


}

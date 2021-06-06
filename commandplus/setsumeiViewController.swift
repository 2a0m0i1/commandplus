//
//  SetsumeiViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/01.
//

import UIKit

class SetsumeiViewController: UIViewController {
    var correct = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var setsumeiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func toListsentaku(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }


}

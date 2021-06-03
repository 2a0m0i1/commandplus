//
//  ResultViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/01.
//

import UIKit

class ResultViewController: UIViewController {
    var correctAnswer: Int = 0
    @IBOutlet var kekkaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        kekkaLabel.text = "\(correctAnswer)"

    }
    
}

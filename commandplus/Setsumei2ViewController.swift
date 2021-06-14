//
//  Setsumei2ViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/13.
//

import UIKit

class Setsumei2ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var setsumeiLabel: UILabel!
    
    var num = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(num)
    }
    
    @IBAction func toList(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }

}

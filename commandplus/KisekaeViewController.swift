//
//  KisekaeViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/09.
//

import UIKit

class KisekaeViewController: UIViewController {
    
    @IBOutlet var kisekaeButton: UIButton!
    @IBOutlet var kisekae2Button: UIButton!
    @IBOutlet var kisekae3Button: UIButton!
    @IBOutlet var kisekae4Button: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
//        kisekaeButton.buttonColor = UIColor.rgba(red: 127, green: 133, blue: 99, alpha: 1.0)


    }
    @IBAction func toTop(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }

}

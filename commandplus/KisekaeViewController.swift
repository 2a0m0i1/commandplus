//
//  KisekaeViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/09.
//

import UIKit

class KisekaeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func toTop(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

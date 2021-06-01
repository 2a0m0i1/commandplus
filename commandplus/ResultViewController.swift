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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  Setsumei2ViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/13.
//

import UIKit

class Setsumei2ViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var setsumeiLabel: UILabel!
    
    var csvArray: [String] = []
    var setsumeiArray: [String] = []
    var num = Int()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(num)
        
        csvArray = loadCSV(fileName: "setsumei2")
        print(csvArray)
        
        updateView()
    }
    
    func updateView(){
        if (csvArray.count != 0) {
            setsumeiArray = csvArray[num].components(separatedBy: ",")
            
        print(setsumeiArray)
            titleLabel.text = setsumeiArray[0]
            setsumeiLabel.text = setsumeiArray[1]
        }
        
    }
    
    func loadCSV(fileName: String) -> [String] {
        let csvBundle = Bundle.main.path(forResource: fileName, ofType: "csv")!
        do {
            let csvData = try String(contentsOfFile: csvBundle,encoding: String.Encoding.utf8)
            let lineChange = csvData.replacingOccurrences(of: "\r", with: "\n")
            csvArray = lineChange.components(separatedBy: "\n")
            csvArray.removeLast()
        } catch {
            print("エラー")
        }
        return csvArray
    }
    
    @IBAction func toList(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }

}

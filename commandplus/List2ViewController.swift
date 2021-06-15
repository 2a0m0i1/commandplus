//
//  List2ViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/01.
//

import UIKit

class List2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var TableView: UITableView!
    
    var indexNum = 0
    var num = Int()
    
    //配列を設定
    let shisutemu = ["ディスプレイをスリープ", "強制的に再起動", "再起動", "システム終了", "画面をロック"]
        
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // ダークモード適用を回避
                self.overrideUserInterfaceStyle = .light
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shisutemu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "samplecell", for: indexPath)
        
        // セルに表示する値を設定する
        cell.textLabel!.text = shisutemu[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print(indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
        num = indexPath.row
        self.performSegue(withIdentifier: "toNext", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "toNext") {
            let nextVC = segue.destination as! Setsumei2ViewController
            nextVC.num = self.num
            print(num)
        }
    }
    
    @IBAction func toList(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }

}

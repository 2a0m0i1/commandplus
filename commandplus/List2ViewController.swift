//
//  List2ViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/01.
//

import UIKit

class List2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var TableView: UITableView!
    
    //配列を設定
    let shisutemu = ["ディスプレイをスリープ", "強制的に再起動", "再起動", "システム終了", "画面をロック"]

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
 
}

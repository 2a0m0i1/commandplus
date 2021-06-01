//
//  ListViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/05/28.
//

import UIKit
 
class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var TableView: UITableView!
    
    //配列を設定
    let ippan = ["切り取り", "コピー", "ペースト", "取り消し", "全てを選択","項目を検索","印刷","保存","新しいタブ","ウィンドウを閉じる","Appを強制終了","Spotlightの表示・非表示","Appをフルスクリーン表示","プレビュー","Appの切り替え","スクリーンショット・画面録画","新しいフォルダ"]

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ippan.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "samplecell", for: indexPath)
        
        // セルに表示する値を設定する
        cell.textLabel!.text = ippan[indexPath.row]
        
        return cell
    }
    
 
}

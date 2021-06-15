//
//  ListViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/05/28.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var TableView: UITableView!
    
    var indexNum = 0
    var num = Int()
    
    //配列を設定
    let ippan = ["コピー", "ペースト", "切り取り", "取り消し", "全てを選択","項目を検索","印刷","保存","新しいタブ","ウィンドウを閉じる","Appを強制終了","Spotlightの表示・非表示","Appをフルスクリーン表示","プレビュー","Appの切り替え","スクリーンショット・画面録画","新しいフォルダ"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // ダークモード適用を回避
        self.overrideUserInterfaceStyle = .light
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //セルの個数を指定するデリゲートメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ippan.count
    }
    
    //セルに値を設定するデータソースメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "samplecell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = ippan[indexPath.row]
        
        
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
            let nextVC = segue.destination as! SetsumeiViewController
            nextVC.num = self.num
            print(num)
        }
    }
    
    
    @IBAction func List(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
}

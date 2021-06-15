//
//  List3ViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/06/01.
//

import UIKit

class List3ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var TableView: UITableView!
    
    var indexNum = 0
    var num = Int()
    
    //配列を設定
    let syorui = ["太字", "斜体", "Webリンク追加", "下線", "左揃え","右揃え","中央揃え","「フォント」ウィンドウの表示・非表示","誤りのある単語を検索","1ページ分上にスクロール","1ページ分下にスクロール","書類の先頭までスクロール","書類の末尾までスクロール","書式設定をクリップボードにコピー","コピーしたスタイルを選択した項目に適用","ペーストして書式スタイルを合わせる","書類設定を選択するためのウインドウを表示","「別名で保存」ダイアログを表示"]
        
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // ダークモード適用を回避
                self.overrideUserInterfaceStyle = .light
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return syorui.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "samplecell", for: indexPath)
        
        // セルに表示する値を設定する
        cell.textLabel!.text = syorui[indexPath.row]
        
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
            let nextVC = segue.destination as! Setsumei3ViewController
            nextVC.num = self.num
            print(num)
        }
    }
    
    @IBAction func toList(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }

}

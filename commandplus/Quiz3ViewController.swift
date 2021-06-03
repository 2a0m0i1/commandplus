//
//  Quiz3ViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/05/31.
//

import UIKit

class Quiz3ViewController: UIViewController {

    var quizArray = [[Any]]()
    
    var correctAnswer: Int = 0
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var sentenceTextView: UITextView!
    
    @IBOutlet var sentakuButton1: UIButton!
    @IBOutlet var sentakuButton2: UIButton!
    @IBOutlet var sentakuButton3: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "書類に関するショートカット"
        
        quizArray.append(["選択したテキストを太字にする時の\nショートカットキーは？", "⌘ + A", "⌘ + B", "⌘ + C", 2])
        quizArray.append(["選択してテキストを斜体にする時の\nショートカットキーは？", "⌘ + I", "⌘ + L", "⌘ + W", 1])
        quizArray.append(["Webリンクを追加する時の\nショートカットキーは？", "⌘ + K", "⌘ + U", "⌘ + A", 1])
        quizArray.append(["選択したテキストに下線を引く時の\nショートカットキーは？", "⌘ + N", "⌘ + S", "⌘ + U", 3])
        quizArray.append(["左揃えにする時の\nショートカットキーは？", "⌘ + }", "⌘ + {", "⌘ + (", 2])
        quizArray.append(["右揃えにする時の\nショートカットキーは？", "⌘ + (", "⌘ + M", "⌘ + }", 3])
        quizArray.append(["中央揃えにする時の\nショートカットキーは？", "control + ⌘ + |", "shift + ⌘ + /", "shift + ⌘ + |", 3])
        quizArray.append(["「フォント」ウインドウの表示・非表示を切り替える時の\nショートカットキーは？", "⌘ + T", "⌘ + K", "⌘ + M", 1])
        quizArray.append(["書類内でスペルに誤りのある単語を検索する時の\nショートカットキーは？", "⌘ + -", "⌘ + ;", "⌘ + /", 2])
        quizArray.append(["1ページ分上にスクロールする時の\nショートカットキーは？", "fn + 上矢印", "fn + 右矢印", "esc + 上矢印", 1])
        quizArray.append(["1ページ分下にスクロールする時の\nショートカットキーは？", "fn + 左矢印", "fn + 上矢印", "fn + 下矢印", 3])
        quizArray.append(["書類の先頭までスクロールする時の\nショートカットキーは？", "shift + 右矢印", "fn + 左矢印", "shift + 左矢印", 2])
        quizArray.append(["書類の末尾までスクロールする時の\nショートカットキーは？", "fn + 右矢印", "fn + 上矢印", "⌘ + 右矢印", 1])
        quizArray.append(["選択した項目の書式設定をクリップボードにコピーする時の\nショートカットキーは？", "option + ⌘ + X", "tab + ⌘ + C", "option + ⌘ + C", 3])
        quizArray.append(["コピーしたスタイルを選択した項目に適用する時の\nショートカットキーは？", "option + ⌘ + V", "option + fn + F", "option + fn + V", 1])
        quizArray.append(["ペーストして書式スタイルを合わせる時の\nショートカットキーは？", "option + tab + ⌘ + V", "option + shift + ⌘ + V", "esc + shift + ⌘ + K", 2])
        quizArray.append(["書類設定を選択するためのウインドウを表示する時の\nショートカットキーは？", "shift + ⌘ + P", "shift + ⌘ + V", "control + ⌘ + P", 1])
        quizArray.append(["「別名で保存」ダイアログを表示する時の\nショートカットキーは？", "fn + ⌘ + P", "shift + tab + R", "shift + ⌘ + S", 3])
        
        quizArray.shuffle()
        sentakuQuiz()
    }
    
    
    func sentakuQuiz() {
        sentenceTextView.text = quizArray[0][0] as? String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        sentakuButton1.setTitle(quizArray[0][1] as? String, for: .normal)
        sentakuButton2.setTitle(quizArray[0][2] as? String, for: .normal)
        sentakuButton3.setTitle(quizArray[0][3] as? String, for: .normal)
    }
    
    @IBAction func choiceAnswer(sender: UIButton){
        if quizArray[0][4] as! Int == sender.tag{
            //正解数を増やす
            correctAnswer+=1
        }
        
        quizArray.remove(at: 0)
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if quizArray.count == 0{
            performSegueToResult()
        }else{
            sentakuQuiz()
        }
    }
    
    func performSegueToResult() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toResultView") {
            
            let resultView = segue.destination as! ResultViewController
            resultView.correctAnswer = self.correctAnswer
        }
    }
    
}

//
//  QuizViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/05/28.
//

import UIKit

class QuizViewController: UIViewController {
    
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
        
        titleLabel.text = "一般的なショートカット"
        numberLabel.text = ""
        
        quizArray.append(["選択した項目を切り取って、\nクリップボードにコピーする時の\nショートカットキーは？", "⌘ + D", "⌘ + X", "⌘ + T", 2])
        quizArray.append(["コピーをする時の\nショートカットキーは？", "⌘ + Z", "⌘ + K", "⌘ + C", 3])
        quizArray.append(["ペーストをする時の\nショートカットキーは？", "⌘ + C", "⌘ + V", "⌘ + X", 2])
        quizArray.append(["直前の動作を取り消す時の\nショートカットキーは？", "⌘ + Z", "⌘ + C", "⌘ + I", 1])
        quizArray.append(["すべての項目を選択する時の\nショートカットキーは？", "⌘ + A", "⌘ + S", "⌘ + T", 1])
        quizArray.append(["書類内の項目を検索する時の\nショートカットキーは？", "⌘ + V", "⌘ + C", "⌘ + F", 3])
        quizArray.append(["選択中のアプリを印刷する時の\nショートカットキーは？", "⌘ + W", "⌘ + P", "⌘ + M", 2])
        quizArray.append(["選択中の書類を保存する時の\nショートカットキーは？", "⌘ + S", "⌘ + B", "⌘ + Z", 1])
        quizArray.append(["新しいタブを開く時の\nショートカットキーは？", "⌘ + A", "⌘ + W", "⌘ + T", 3])
        quizArray.append(["最前面のウインドウを閉じる時の\nショートカットキーは？", "⌘ + W", "⌘ + I", "⌘ + L", 1])
        quizArray.append(["Appを強制終了する時の\nショートカットキーは？","⌘ + option + esc","⌘ + option + Q","⌘ + shift +　A",1])
        quizArray.append(["Spotlightの表示・非表示をする時の\nショートカットキーは？", "⌘ + option", "⌘ + esc", "⌘ + スペースバー", 3])
        quizArray.append(["Appをフルスクリーンで使う時の\nショートカットキーは？", "control + ⌘ + E", "control + ⌘ + F", "shift + ⌘ + F", 1])
        quizArray.append(["選択されている項目をプレビューする時の\nショートカットキーは？","shift + ⌘","スペースバー","fn",2])
        quizArray.append(["最近使った順番でAppを切り替える時の\nショートカットキーは？","tab + shift","tab + fn","⌘ + tab",3])
        quizArray.append(["スクリーンショット・画面収録を実行する時の\nショートカットキーは？","control + ⌘ + 5","tab + shift + 5","shift + ⌘ + 5",3])
        quizArray.append(["Finderで新しいフォルダを作成する時の\nショートカットキーは？","shift + ⌘ + N","shift + ⌘ + O","shift + control + N",1])
        
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

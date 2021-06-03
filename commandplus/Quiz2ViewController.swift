//
//  Quiz2ViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/05/31.
//

import UIKit

class Quiz2ViewController: UIViewController {
    
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
        
        titleLabel.text = "スリープ・ログアウト・システム終了\nに関するショートカット"
        
        quizArray.append(["ディスプレイをスリープ状態にする時の\nショートカットキーは？", "control + shift + 電源ボタン", "control + option + 電源ボタン", "⌘ + shift + 電源ボタン", 3])
        quizArray.append(["Macを強制的に再起動する時の\nショートカットキーは？", "control + ⌘ + 電源ボタン", "shift + ⌘ + 電源ボタン", "control + fn + 電源ボタン", 1])
        quizArray.append(["全てのAppを終了し、Macを再起動する時の\nショートカットキーは？", "control + ⌘ + メディア取り出しキー", "control + ⌘ + 電源ボタン", "option + ⌘ + 電源ボタン", 1])
        quizArray.append(["全てのAppを終了し、Macをシステム終了する時の\nショートカットキーは？", "shift + fn + ⌘ + 電源ボタン", "control + option + ⌘ + 電源ボタン", "control + option + ⌘ + esc", 2])
        quizArray.append(["画面をロックする時の\nショートカットキーは？", "control + ⌘ + K", "control + ⌘ + Q", "shift + control + Q", 2])
        
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

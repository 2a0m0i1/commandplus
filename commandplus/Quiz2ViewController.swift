
//
//  Quiz2ViewController.swift
//  commandplus
//
//  Created by 阿部亜未 on 2021/05/31.
//

import UIKit

class Quiz2ViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var sentenceTextView: UITextView!
    @IBOutlet var sentakuButton1: UIButton!
    @IBOutlet var sentakuButton2: UIButton!
    @IBOutlet var sentakuButton3: UIButton!
    @IBOutlet weak var hanteiImageView: UIImageView!
    
    var csvArray: [String] = []
    var quizArray: [String] = []
    var quizCount = 0
    var correctCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        csvArray = loadCSV(fileName: "shisutemu")
        print(csvArray)
        
        quizArray = csvArray[quizCount].components(separatedBy: ",")
        
        updateView()
    }
    
    //ボタンを押したときに呼ばれる
    @IBAction func btnAction(sender: UIButton){
        if sender.tag == Int(quizArray[1]) {
            correctCount += 1
            print("正解")
            hanteiImageView.image = UIImage(named: "maru")
        } else {
            print("不正解")
            hanteiImageView.image = UIImage(named: "batsu")
        }
        print("スコア：\(correctCount)")
        hanteiImageView.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.hanteiImageView.isHidden = true
            self.nextQuiz()
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let scoreVC = segue.destination as! ResultViewController
        scoreVC.correctAnswer = correctCount
    }
    
    func updateView(){
        print(quizCount,csvArray.count)
        if quizCount < csvArray.count {
            quizArray = csvArray[quizCount].components(separatedBy: ",")
            numberLabel.text = "Q\(quizCount + 1)"
            sentenceTextView.text = quizArray[0]
            sentakuButton1.setTitle(quizArray[2], for: .normal)
            sentakuButton2.setTitle(quizArray[3], for: .normal)
            sentakuButton3.setTitle(quizArray[4], for: .normal)
        } else {
            performSegue(withIdentifier: "toResult", sender: nil)
        }
        
    }
    
    func nextQuiz() {
        quizCount+=1
        updateView()
        
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
}

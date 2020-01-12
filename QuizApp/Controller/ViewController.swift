//
//  ViewController.swift
//  QuizApp
//
//  Created by 宏輝 on 11/01/2020.
//  Copyright © 2020 宏輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestion = QuestionBank()
    
    //問題文を表示
    @IBOutlet weak var questionLabel: UILabel!
    //回答１を表示
    @IBOutlet weak var answer1String: UIButton!
    //回答2を表示
    @IBOutlet weak var answer2String: UIButton!
    
    //現在の問題数
    var questionNumber = 0
    //選択された回答　回答1なら1、回答2なら2になる
    var pickedAnswer = 0
    //正解数をprintで表示
    var correctAnswerNumber = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //初期に表示される画面の実装
        questionLabel.text = allQuestion.list[0].questionText
        answer1String.setTitle(allQuestion.list[0].answer1, for: .normal)
        answer2String.setTitle(allQuestion.list[0].answer2, for: .normal)

    }

    

    
    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            pickedAnswer = 1
        } else if (sender as AnyObject).tag == 2 {
            pickedAnswer = 2
        }
        
        //問題に対する、回答が正しいのか
        check()
        
        //次の問題を出題
        nextQuestion()
        
    }
    
    //回答を確認する
    func check(){
        
        let correctAnswer = allQuestion.list[questionNumber].correctCheck
        
        if correctAnswer == pickedAnswer {
            print("正解")
            correctAnswerNumber = correctAnswerNumber + 1
        } else {
            print("不正解")
        }
    }
    
    //次の質問へ進む
    func nextQuestion(){
        if questionNumber <= 1 {
            questionNumber = questionNumber + 1
            //問題文
            questionLabel.text = allQuestion.list[questionNumber].questionText
            //回答1
            answer1String.setTitle(allQuestion.list[questionNumber].answer1, for: .normal)
            //回答2
            answer2String.setTitle(allQuestion.list[questionNumber].answer2, for: .normal)
        } else {
            print("質問終了")
            print("正解数は\(correctAnswerNumber)")
        }
    }
    

}


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
    
    var questionNumber = 0
    var pickedAnswer = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        questionLabel.text = allQuestion.list[0].questionText
    }

    
    
    func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            pickedAnswer = true
        
        } else if (sender as AnyObject).tag == 2{
         pickedAnswer = false
        
        }
        
        //チェック　回答があっているのか
        check()
        
        
        //次の問題を出題
        nextQuestion()
        
    }
    
    
//    func check(){
//        
//        let correctAnswer = allQuestion.list[0].answer
//        
//        
//        if correctAnswer == pickedAnswer {
//            print("正解！")
//        } else {
//            print("間違い！")
//        }
//        
//    }
//    
//    func nextQuestion(){
//        if questionNumber <= 2 {
//            questionNumber = questionNumber + 1
//            questionLabel.text = allQuestion.list[questionNumber].questionText
//        }else{
//            print("終わり")
//        }
//    }
//    

}


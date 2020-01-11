//
//  ViewController.swift
//  QuizApp
//
//  Created by 宏輝 on 11/01/2020.
//  Copyright © 2020 宏輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    let allQuestion = QuestionBank()
    
    var questionNumber = 0
    var pickedAnswer = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = allQuestion.list[0].questionText
    }

    
    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            pickedAnswer = true
        
        } else if (sender as AnyObject).tag == 2{
         pickedAnswer = false
        
        }
        
        //チェック　回答があっているのか
        
        //次の問題を出題
    }
    
    
    

}


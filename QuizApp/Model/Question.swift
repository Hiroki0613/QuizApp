//
//  Question.swift
//  QuizApp
//
//  Created by 宏輝 on 11/01/2020.
//  Copyright © 2020 宏輝. All rights reserved.
//

import Foundation

class Question{
    
    let questionText: String
    let answer1: String
    let answer2: String
    
    
    //正解を示す型、answer1なら1、answer2なら２になる
    let correctCheck: Int
    
    
    init(questionText:String, answer1:String, answer2:String, correctOrNot:Int){
        
        self.questionText = questionText
        self.answer1 = answer1
        self.answer2 = answer2
        correctCheck = correctOrNot

    }
    
}

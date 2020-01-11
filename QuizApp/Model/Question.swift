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
    let answer: Bool
    
    init(text:String,correctOrNot:Bool){
        
        questionText = text
        answer = correctOrNot
    }
    
}

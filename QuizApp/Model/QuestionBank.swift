//
//  QuestionBank.swift
//  QuizApp
//
//  Created by 宏輝 on 11/01/2020.
//  Copyright © 2020 宏輝. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init(){
        list.append(Question(text: "東京は日本です。", correctOrNot: true))
        list.append(Question(text: "東京はアメリカです。", correctOrNot: false))
        list.append(Question(text: "地球は丸いです。", correctOrNot: false))
        list.append(Question(text: "りんごは果物です。", correctOrNot: true))
    }
    
}

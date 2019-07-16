
//
//  Question.swift
//  Quizzler
//
//  Created by Elina Lua Ming on 7/3/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
}
//
//class myOtherClass {
//    let example = Question(text: "what is LOVE?", correctAnswer: true)
//}

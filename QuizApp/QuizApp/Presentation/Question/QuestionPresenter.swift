//
//  QuestionPresenter.swift
//  QuizApp
//
//  Created by Merdin Kahrimanovic on 10/02/2023.
//

import Foundation
import QuizEngine

struct QuestionPresenter {
    let questions: [Question<String>]
    let question: Question<String>
    
    var title: String {
        guard let index = questions.firstIndex(of: question) else { return "" }
        
        return "Question #\(index + 1)"
    }
}

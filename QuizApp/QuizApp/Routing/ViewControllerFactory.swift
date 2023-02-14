//
//  ViewControllerFactory.swift
//  QuizApp
//
//  Created by Merdin Kahrimanovic on 09/02/2023.
//

import UIKit
import QuizEngine

protocol ViewControllerFactory {
    typealias Answers = [(question: Question<String>, answer: [String])]
    func questionViewController(for question: Question<String>, answerCallback: @escaping ([String]) -> Void) -> UIViewController
    
    func resultViewController(for userAnswers: Answers) -> UIViewController
}



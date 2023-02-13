//
//  QuizDelegate.swift
//  QuizEngine
//
//  Created by Merdin Kahrimanovic on 13/02/2023.
//

import Foundation

public protocol QuizDelegate {
    associatedtype Question: Hashable
    associatedtype Answer
    
    func handle(question: Question, answerCallback: @escaping (Answer) -> Void)
    func handle(result: Result<Question, Answer>)
}

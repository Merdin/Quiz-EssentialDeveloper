//
//  QuizDelegate.swift
//  QuizEngine
//
//  Created by Merdin Kahrimanovic on 13/02/2023.
//

import Foundation

// TODO: Separate QuizDelegate into QuizDataSource with answer(for:) method

public protocol QuizDelegate {
    associatedtype Question
    associatedtype Answer
    
    func answer(for question: Question, completion: @escaping (Answer) -> Void)
    
    func didCompleteQuiz(withAnswers answers: [(question: Question, answer: Answer)])
}

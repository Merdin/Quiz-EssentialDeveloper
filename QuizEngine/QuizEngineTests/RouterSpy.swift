//
//  RouterSpy.swift
//  QuizEngineTests
//
//  Created by Merdin Kahrimanovic on 09/02/2023.
//

import Foundation
import QuizEngine

class RouterSpy: Router {
    var routedQuestions: [String] = []
    var routedResult: Result<String, String>? = nil
    
    var answerCallback: (String) -> Void = { _ in }
    
    func routeTo(question: String, answerCallback: @escaping (String) -> Void) {
        routedQuestions.append(question)
        self.answerCallback = answerCallback
    }
    
    func routeTo(result: Result<String, String>) {
        routedResult = result
    }
}

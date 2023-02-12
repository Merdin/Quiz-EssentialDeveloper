//
//  ViewControllerFactory.swift
//  QuizApp
//
//  Created by Merdin Kahrimanovic on 09/02/2023.
//

import UIKit
import QuizEngine

protocol ViewControllerFactory {
    func questionViewController(for question: Question<String>, answerCallback: @escaping ([String]) -> Void) -> UIViewController
    func resultViewController(for result: Result<Question<String>, [String]>) -> UIViewController
}
